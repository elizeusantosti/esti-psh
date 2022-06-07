$origem = get-item $home\*

$esti_padrao = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/esti_padrao.ps1
$install_scoop = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/install_scoop.ps1

if ($origem -match "scoop") {Invoke-Expression $($esti_padrao.Content)} else {Invoke-Expression $($install_scoop.Content)}
