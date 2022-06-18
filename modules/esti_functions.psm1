function esti_database(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    try {
        Invoke-Expression -Command '.$home\documents\windowspowershell\database\esti\$script.ps1'
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}