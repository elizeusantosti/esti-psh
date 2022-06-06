$origem = "$home\desktop"

$arquivos = get-childitem $origem

$categoria = "\.(lnk)","\.(exe)","\.(txt)"

foreach ($item in $categoria){
    $categoria_atual = $arquivos -match $item
    $item
}