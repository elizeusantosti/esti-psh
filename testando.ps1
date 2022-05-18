$desktop = get-item $home\Desktop\*

$extensoes = "\.(lnk)","\.(exe)","\.(txt|xls|xlsx|doc|docx|pdf)"

$i=0

foreach ($arquivo in $desktop) {$categoria[$i++] = $desktop -match $extensoes}















# FUNCIONANDO
<#
$atalhos = $origem -match "\.(lnk)"

$executaveis = $origem -match "\.(exe)"

$documentos = $origem -match "\.(txt|xls|xlsx|doc|docx|pdf)"


$lista = $atalhos,$executaveis,$documentos


$i=0


foreach ($item in $lista) {if ($item.Count -ne 0) {$categoria[$i++] = $item} else {"NOT"}}
#>
