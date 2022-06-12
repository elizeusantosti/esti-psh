function import([string]$arquivo){
    try {
        Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/$arquivo | Invoke-Expression
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
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

Function nova_pasta($pasta, $destino) {
    Try {
        New-Item -Path $destino\$pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

$scripts = "automatizar.ps1","arquivos.ps1","organizar.ps1","backup.ps1"

$scripts_url =  "https://raw.githubusercontent.com/elizeusantosti/esti/main/scripts/"

$pasta_esti = "$home\documents\windowspowershell\esti\"

import esti_core