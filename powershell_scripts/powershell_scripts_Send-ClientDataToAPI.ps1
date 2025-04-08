# Send-ClientDataToAPI.ps1
param (
    [string]$ApiUrl = "https://api.example.com/clients",
    [SecureString]$Token,
    [string]$SqlServer = "your_sql_server",
    [string]$Database = "DEMO_Integration",
    [string]$LogTable = "ApiLog"
)

$Headers = @{
    "Authorization" = "Bearer $(ConvertFrom-SecureString $Token -AsPlainText)"
    "Content-Type"  = "application/json"
}

$Payload = @(
    @{
        ClientID = 100
        ClientName = "John Doe"
        Email = "john.doe@example.com"
    },
    @{
        ClientID = 101
        ClientName = "Jane Smith"
        Email = "jane.smith@example.com"
    }
) | ConvertTo-Json -Depth 3

try {
    $Response = Invoke-RestMethod -Uri $ApiUrl -Method Post -Headers $Headers -Body $Payload
    $StatusCode = 200
    $ErrorMessage = $null
}
catch {
    $Response = $_.Exception.Message
    $StatusCode = $_.Exception.Response.StatusCode.value__
    $ErrorMessage = $_.Exception.Message
    Write-Error "Failed to send data to API: $($ErrorMessage)"
}

$LogQuery = @"
INSERT INTO [$Database].dbo.[$LogTable] (Endpoint, Payload, ResponseText, StatusCode, ErrorMessage, CreatedAt)
VALUES (
    '$ApiUrl',
    @Payload,
    @ResponseText,
    $StatusCode,
    @ErrorMessage,
    GETDATE()
)
"@

try {
    Invoke-Sqlcmd -ServerInstance $SqlServer -Database $Database -Query $LogQuery -Variable @{Payload=$Payload; ResponseText=$Response; ErrorMessage=$ErrorMessage}
}
catch {
    Write-Error "Failed to execute SQL query: $($_.Exception.Message)"
}