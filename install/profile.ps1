function dev {
    # Cria a lista de parametros
    $lista = "read","-branch"
    # Para cada parametro da lista
    $parametro = foreach ($item in $lista){
        # Verifica a posicao de cada parametro da $lista em $args
        $posicao = [array]::LastIndexOf($args,"$item")+1
        # Se o parametro for igual a 0 retorna o valor $null
        if($posicao -ne 0) {$args[$posicao]}else{$null}
    }
    $read = $parametro[0]
    $branch = $parametro[1]
    
}