# Import-DataFromAPI.ps1
param (
    [string]$ApiUrl = "https://api.example.com/status",
    [SecureString]$Token,
    [string]$SqlServer = "your_sql_server",
    [string]$Database = "DEMO_Integration",
    [string]$LogTable = "ApiLog",
    [string]$StagingTable = "ApiDeliveryStatus"
)

$Headers = @{
    "Authorization" = "Bearer $(ConvertFrom-SecureString $Token -AsPlainText)"
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
    Write-Error "Failed to fetch data from API: $($ErrorMessage)"
}

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

try {
    Invoke-Sqlcmd -ServerInstance $SqlServer -Database $Database -Query $InsertQuery
    Invoke-Sqlcmd -ServerInstance $SqlServer -Database $Database -Query $LogQuery -Variable @{ResponseText=$ResponseText; ErrorMessage=$ErrorMessage}
}
catch {
    Write-Error "Failed to execute SQL query: $($_.Exception.Message)"
}