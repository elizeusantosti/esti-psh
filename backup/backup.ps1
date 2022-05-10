$exclusao = "appdata",".vscode"
$destino = "X:\BACKUP"
$origem = gci -path $home -e $exclusao
copy-item -path $origem -destination $destino -recurse