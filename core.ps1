function import($arquivo){
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

function nova_pasta($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

$scripts = "automatizar.ps1","arquivos.ps1","organizar.ps1","backup.ps1"

$main =  "https://raw.githubusercontent.com/elizeusantosti/esti/main"

$main_scripts =  "$main/scripts"

$pasta_powershell = "$home\documents\windowspowershell"

$pasta_esti = "$pasta_powershell\esti"

$pasta_esti_scripts = "$pasta_esti\scripts\"