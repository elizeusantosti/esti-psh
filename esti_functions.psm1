Invoke-Expression -Command '.$home\documents\windowspowershell\variables\padrao.ps1'

function importar(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script,
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateSet('-local','-remoto')]
        [string]$Item
    )
    Switch ($Item){
        '-local' {Invoke-Expression -Command '.$variaveis\$script.ps1'}
        '-remoto' {Invoke-WebRequest $main/variaveis/$script.ps1 | Invoke-Expression}
    }
}

function baixar() {
    importar apps -remoto
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
