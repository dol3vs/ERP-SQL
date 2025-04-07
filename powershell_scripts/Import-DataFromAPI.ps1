# Import-DataFromAPI.ps1
$ApiUrl = "https://api.example.com/status"
$Token = "your_bearer_token_here"
$SqlServer = "your_sql_server"
$Database = "DEMO_Integration"
$LogTable = "ApiLog"
$StagingTable = "ApiDeliveryStatus"

$Headers = @{
    "Authorization" = "Bearer $Token"
    "Content-Type"  = "application/json"
}

try {
    $Response = Invoke-RestMethod -Uri $ApiUrl -Method Get -Headers $Headers
    $ResponseText = $Response | ConvertTo-Json -Depth 3
    $StatusCode = 200
    $ErrorMessage = $null
}
catch {
    $ResponseText = $_.Exception.Message
    $StatusCode = $_.Exception.Response.StatusCode.value__
    $ErrorMessage = $_.Exception.Message
}

# Example: Insert JSON into staging table
# You can replace with logic to parse and process individual fields
$InsertQuery = @"
TRUNCATE TABLE [$Database].dbo.[$StagingTable];

-- Assuming OPENJSON logic is replaced by actual processing outside this script
-- For simplicity, log only here
"@

$LogQuery = @"
INSERT INTO [$Database].dbo.[$LogTable] (Endpoint, Payload, ResponseText, StatusCode, ErrorMessage, CreatedAt)
VALUES (
    '$ApiUrl',
    NULL,
    @ResponseText,
    $StatusCode,
    @ErrorMessage,
    GETDATE()
)
"@

Invoke-Sqlcmd -ServerInstance $SqlServer -Database $Database `
    -Query $InsertQuery

Invoke-Sqlcmd -ServerInstance $SqlServer -Database $Database `
    -Query $LogQuery `
    -Variable @{ResponseText=$ResponseText; ErrorMessage=$ErrorMessage}