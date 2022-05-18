$origem = get-item $home\*

if ($origem -match "scoop") {.\esti_padrao.ps1} else {.\install_scoop}