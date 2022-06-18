Invoke-Expression -Command '.$home\documents\windowspowershell\database\esti\variaveis.ps1'

function esti_database(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $database_secret = $pasta.database.esti+"$script.ps1"
    try {
        Invoke-Expression -Command '.$database_secret'
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}