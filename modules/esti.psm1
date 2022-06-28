JuInvoke-Expression -Command '.$home\documents\windowspowershell\database\esti\variaveis.ps1'

function esti(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $secret_scripts = $pasta.scripts.esti+"$script.ps1"
    try {
        Invoke-Expression -Command '.$secret_scripts'
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

# Estrutura OK
function backup{
    [cmdletbinding()]
    param(
        [Parameter(position=0)]
        [string]$origem
    ),
    [cmdletbinding()]
    param(
        [Parameter(position=0)]
        [string]$destino
    )
    switch($item){
        'origem' {}
        'destino'{}
    }
    
}
