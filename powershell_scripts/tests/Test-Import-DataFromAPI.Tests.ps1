# Test-Import-DataFromAPI.Tests.ps1

Describe "Import-DataFromAPI.ps1" {
    It "Should import data from API and log the response" {
        # Arrange
        $ApiUrl = "https://api.example.com/status"
        $Token = ConvertTo-SecureString -String "your_bearer_token_here" -AsPlainText -Force
        $SqlServer = "your_sql_server"
        $Database = "DEMO_Integration"
        $LogTable = "ApiLog"
        $StagingTable = "ApiDeliveryStatus"

        # Mock the Invoke-RestMethod cmdlet
        Mock -CommandName Invoke-RestMethod -MockWith {
            @{
                Status = "Success"
                Data = "Sample data"
            }
        }

        # Mock the Invoke-Sqlcmd cmdlet
        Mock -CommandName Invoke-Sqlcmd

        # Act
        . "$PSScriptRoot/../Import-DataFromAPI.ps1" -ApiUrl $ApiUrl -Token $Token -SqlServer $SqlServer -Database $Database -LogTable $LogTable -StagingTable $StagingTable

        # Assert
        Assert-MockCalled -CommandName Invoke-RestMethod -Exactly -Times 1
        Assert-MockCalled -CommandName Invoke-Sqlcmd -Exactly -Times 2
    }
}