$parametros = "backup","auto-install"

$parametro = foreach ($item in $parametros)
{
    $posicao = [array]::LastIndexOf($args,"$item")+1
    if($posicao -ne 0){$args[$posicao]}else{$null}        
}

$parametro