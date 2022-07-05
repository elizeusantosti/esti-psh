$global:branch = "testing"

iwr -uri "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/core/functions.ps1" | iex
iwr -uri "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/core/instaladores.ps1" | iex

$instaladores.GetEnumerator() | foreach {
    baixar $_.value "$home\downloads"
    $app = $_.key; Write-Host("O $app está sendo baixado...")
}