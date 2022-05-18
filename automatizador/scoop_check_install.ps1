$origem = get-item $home\*

$esti_padrao = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/esti_padrao.ps1;Invoke-Expression $($esti_padrao.Content)
$install_scoop = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/install_scoop.ps1;Invoke-Expression $($install_scoop.Content)



if ($origem -match "scoop") {$esti_padrao.ps1} else {$install_scoop}
