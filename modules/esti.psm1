# Implement proxy functions to get $script cmdlet help.

Invoke-Expression -Command '.$home\documents\windowspowershell\core\esti\database.ps1'

function esti(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $secret_scripts = $pasta.scripts + "\$script.ps1"
    try {
        Invoke-Expression -Command '.$secret_scripts'
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

<# Testar !!
function baixar {
    [cmdletbinding()]
    param(
    [Parameter($mandatory=$true, position=0)]
    [string]$arquivo,
    [Paramater($mandatory)
    [ValidateSet('url', 'repositorio')
    [string]$item
    )
    Switch ($item) {
        'url' {Start BitsTransfer -Source $arquivo -Destination $item}
        'repositorio' {Star BitsTransfer -Source $arquivo -Destination $item + }
    }
    
}
#>
