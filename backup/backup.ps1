<#

Criar versão completa, pegando a pasta C:\ de forma recursiva.

Pasta de destino do backup com nome de usuário e data.

Opção de selecionar a letra do drive de destino.

Opção de selecionar a pasta de usuário.


$username

$usuario = $home | select basename


$data = system.date()


#>

$exclusao = "appdata",".vscode"
$destino = "X:\backup\$usuario\$data"
$origem = gci -path $home -e $exclusao
copy-item -path $origem -destination $destino -recurse


<# COMPLETO
 TO-DO
 Verificar pastas ocultas do sistema.
 Excluir pastas desnecessárias na recursão.
 


$destino = "X:\backup\$usuario\$data"
$exclusao = "ProgramFiles(x86)","ProgramFiles","Windows","Hidden","App
data"
$origem = gci -path $home -e $exclusao
copy-item -path $origem -destination $destino -recurse


#>
