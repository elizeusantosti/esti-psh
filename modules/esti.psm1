Invoke-Expression -Command '.$home\documents\windowspowershell\core\esti\database.ps1'

function esti(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $secret_scripts = $pasta.scripts+"$script.ps1"
    try {
        Invoke-Expression -Command '.$secret_scripts'
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}