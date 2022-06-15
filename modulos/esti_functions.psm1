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
        '-local' {Invoke-Expression -Command '.$home\documents\windowspowershell\variaveis\$script.ps1'}
        '-remoto' {Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis/$script.ps1 | Invoke-Expression}
    }
}

function baixar() {
    importar padrao -remoto
    importar instaladores -remoto
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$origem,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$destino
    )
    Try {
        Write-Host("Baixando $origem para $destino" -ForegroundColor Yellow)
        Start-BitsTransfer -Source $origem -Destination $destino
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

function criar-pasta($pasta) {
    Try {
        Write-Host("Criando a pasta $pasta")
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}
