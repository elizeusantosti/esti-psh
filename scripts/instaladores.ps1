# Define a branch principal.
$global:branch = "testing"

# Importa os arquivos de configuração do script.
iwr -uri "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/core/functions.ps1" | iex
iwr -uri "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/core/instaladores.ps1" | iex

$origem = "c:\util"

criar_pasta $origem

# Baixa os instaladores.
$instaladores.GetEnumerator() | foreach {
    baixar $_.value $origem
    $app = $_.key; Write-Host("O $app está sendo baixado...")

}


$arquivos = Get-ChildItem $origem | foreach {$_.FullName}

$arquivos | foreach {
    Try {
        .$_ | Out-Null
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}
