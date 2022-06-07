$origem = "$home\desktop"
$arquivos  = get-childitem $origem

$categorias = @(("Atalhos","\.(lnk)"),
("Executaveis","\.(exe)"),
("Documentos\Texto","\.(txt)"),
("Documentos\PDF","\.(pdf)"),
("Documentos\Excel","\.(xls)"),
("Documentos\Word","\.(doc)"),
("Documentos\Powerpoint","\.(exe)")
)

foreach ($item in $categorias) {
    $categoria = $item[0]
    $extensao = $item[1]
    if ($arquivos -match $extensao) {
        $arquivo_atual = $arquivos -match $extensao
        $arquivo_atual
        $destino=$origem,$categoria -Join "\"
        if (test-path $destino) {
            Move-Item $arquivo_atual -destination $destino
        }
        else
        {
            md $destino
            Move-Item $arquivo_atual -destination $destino
        }
        
    }
}














<#
$arquivos = get-childitem -File $home\Desktop\

function extensao {
    foreach ($arg in $args) {
        New-Variable -Name "$arg" -Value ($arquivos -match "\.($arg)")
        Get-Variable -Name $arg -ValueOnly
    }
}

extensao txt doc xls pdf
#>