$arquivos = get-childitem -File $home\Desktop\

$extensoes = "\.(lnk)","\.(html)","\.(txt|xls|xlsx|doc|docx|pdf)","\.(html|css|js|py)"

$i=0

#$categoria = foreach ($arquivo in $arquivos) {$arquivos -match $extensoes[$i++]}














# FUNCIONANDO

<#
$desktop = get-item $home\Desktop\*


$atalhos = $desktop -match "\.(lnk)"

$executaveis = $desktop -match "\.(exe)"

$documentos = $desktop -match "\.(txt|xls|xlsx|doc|docx|pdf)"


$lista = $atalhos,$executaveis,$documentos


$i=0


foreach ($item in $lista) {if ($item.Count -ne 0) {$categoria[$i++] = $item} else {"NOT"}}

#>
