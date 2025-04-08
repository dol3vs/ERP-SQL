# Test-Send-ClientDataToAPI.Tests.ps1

Describe "Send-ClientDataToAPI.ps1" {
    It "Should send client data to API and log the response" {
        # Arrange
        $ApiUrl = "https://api.example.com/clients"
        $Token = ConvertTo-SecureString -String "your_bearer_token_here" -AsPlainText -Force
        $SqlServer = "your_sql_server"
        $Database = "DEMO_Integration"
        $LogTable = "ApiLog"

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
        . "$PSScriptRoot/../Send-ClientDataToAPI.ps1" -ApiUrl $ApiUrl -Token $Token -SqlServer $SqlServer -Database $Database -LogTable $LogTable

        # Assert
        Assert-MockCalled -CommandName Invoke-RestMethod -Exactly -Times 1
        Assert-MockCalled -CommandName Invoke-Sqlcmd -Exactly -Times 1
    }
}