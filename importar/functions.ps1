function importar(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $import = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/importar/script.ps1"
    Invoke-Expression $import
    Invoke-Expression $import
}

function baixar() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$arquivo,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$destino
    )
    try {
        Start-BitsTransfer -Source $arquivo -Destination $destino
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

function criar-pasta($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}