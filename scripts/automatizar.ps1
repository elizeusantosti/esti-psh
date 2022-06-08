$origem = get-item $home\*

$esti_padrao = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/main/automatizador/esti_padrao.ps1
$scoop_padrao = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/main/automatizador/scoop_padrao.ps1

if ($origem -match "scoop") {Invoke-Expression $($esti_padrao.Content)} else {Invoke-Expression $($scoop_padrao.Content)}
