$origem = gci -File

$arquivos = $origem | select Name

$extensoes = $origem | select Extension