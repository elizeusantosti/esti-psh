function importar(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script,
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateSet('local','remoto')]
        [string]$Item
    )
    Switch ($Item){
        'local' {Invoke-Expression -Command '.$script'}
        'remoto' {Invoke-WebRequest $script | Invoke-Expression}
    }
}

function baixar() {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$origem,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$destino
    )
    Try {
        Start-BitsTransfer -Source $origem -Destination $destino
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

function nova-pasta($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

$main =  "https://raw.githubusercontent.com/elizeusantosti/esti/main"
$powershell = "$home\documents\windowspowershell"
$modules = "$powershell\modules"
$pasta_scripts = "$powershell\scripts"

$dwservice = "https://www.dwservice.net/download/dwagent_x86.exe"
