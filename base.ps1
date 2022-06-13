$main =  "https://raw.githubusercontent.com/elizeusantosti/esti/main"
$main_scripts =  "$main/scripts"
$powershell = "$home\documents\windowspowershell"
$esti = "$powershell\esti"
$pasta_scripts = "$esti\scripts"
$scripts = "automatizar.ps1","arquivos.ps1","organizar.ps1","backup.ps1"

function importar(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$origem,
        [Parameter(Mandatory=$true, Position=2)]
        [ValidateSet('local','remoto')]
        [string]$Item
    )
    Switch ($Item){
        'local' {Invoke-Expression -Command '.$origem\$script'}
        'remoto' {Invoke-WebRequest $origem\$script | Invoke-Expression}
    }
}

function download([string]$arquivo, [string]$origem, [string]$destino) {
    Try {
        Start-BitsTransfer -Source $origem/$arquivo -Destination $destino
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

function nova_pasta($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}
