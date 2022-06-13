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
        [string]$arquivo,
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateSet('Local','Remoto')]
        [string]$Item
    )
    Switch ($Item){
        'local' {Invoke-Expression -Command '.$esti\$arquivo.ps1'}
        'remoto' {Invoke-WebRequest $arquivo | Invoke-Expression}
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
