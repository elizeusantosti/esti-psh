# Define a branch principal.
$global:branch = "testing"

$destino = "c:\util"

# Importa os arquivos de configuração do script.
iwr -uri "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/core/functions.ps1" | iex
iwr -uri "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/core/instaladores.ps1" | iex

# Baixa os instaladores.
$instaladores.GetEnumerator() | foreach {
    baixar $_.value $destino
    $app = $_.key; Write-Host("O $app está sendo baixado...")
}