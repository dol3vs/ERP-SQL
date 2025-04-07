# Send-ClientDataToAPI.ps1
$ApiUrl = "https://api.example.com/clients"
$Token = "your_bearer_token_here"
$SqlServer = "your_sql_server"
$Database = "DEMO_Integration"
$LogTable = "ApiLog"

$Headers = @{
    "Authorization" = "Bearer $Token"
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

Invoke-Sqlcmd -ServerInstance $SqlServer -Database $Database `
    -Query $LogQuery `
    -Variable @{Payload=$Payload; ResponseText=$Response; ErrorMessage=$ErrorMessage}