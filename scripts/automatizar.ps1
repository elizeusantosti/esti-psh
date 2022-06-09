$origem = get-item $home\*

$esti_padrao = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/scripts/automatizar/esti_padrao.ps1
$scoop_padrao = Invoke-WebRequest hhttps://raw.githubusercontent.com/elizeusantosti/esti/main/scripts/automatizar/scoop_padrao.ps1

if ($origem -match "scoop") {Invoke-Expression $($esti_padrao.Content)} else {Invoke-Expression $($scoop_padrao.Content)}