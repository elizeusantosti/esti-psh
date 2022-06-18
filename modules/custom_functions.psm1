function import(){
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
        'remoto' {Invoke-WebRequest -Uri "$script" | Invoke-Expression}
    }
}

function download() {
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

function new-folder($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}