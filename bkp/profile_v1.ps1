function dev {

    $lista = @(
    ("read","$url.content"),
    ("-branch","teste")
    )

# DEFINA TODOS OS PARAMETROS DE UMA FUNÇÃO AQUI
    foreach ($item in $lista){
        $parametro = $item[0]
        $execucao = $item[1]

        $posicao_atual = [array]::LastIndexOf($args,"$parametro")+1
        
        if ($posicao_atual -ne 0){
            $parametro_atual = $args[$posicao_atual]
        }
        else {
            $parametro_atual = $null
        }
        $parametro_atual
# REALIZAR CONDIÇÕES LÓGICAS AQUI
    }
}
#-----------------------------------------------

<#
    $branch = $args[$branch_position]
    if ($branch){$branch_position+1}else{$branch = "main"}
    
    $read = $args[$read_position]
    if ($read){$read_position+1}else{$script = $args[0]}

    $repositorio = "https://raw.githubusercontent.com/bredsan/esti/$branch/scripts"

    

    try {$url = Invoke-WebRequest $repositorio/$script.ps1} catch {}
            if ($url.StatusCode -eq "200"){
                if ($read){$url.content}
                Invoke-Expression $($url.content)
            }
            else {
                Write-Host("A branch $branch nao contem o arquivo $script.ps1") -ForegroundColor Red
            }
}

function esti{
    foreach ($arg in $args){
        $local = "$home\documents\WindowsPowershell\esti"
        $repositorio = "https://raw.githubusercontent.com/bredsan/esti/main/scripts"
        $arquivo_atual = "$arg.ps1"
        $arquivos_locais = $local | Get-ChildItem -File
        if($arquivos_locais -match $arquivo_atual){
            .$local\$arquivo_atual
        }
        else
        {
            Write-Host("A pasta local nao contem o arquivo $arquivo_atual.") -ForegroundColor Red
            Write-Host("Pesquisando no repositorio...") -ForegroundColor Yellow
            try {$online = Invoke-WebRequest $repositorio/$arg.ps1} catch {}
            if ($online.StatusCode -eq "200"){
                Write-Host("Arquivo $arg.ps1 encontrado!!") -ForegroundColor Green
                Invoke-Expression $($online.Content)
            }
            else
            {
                Write-Host("O repositório nao contem o arquivo $arg.ps1.") -ForegroundColor Red
            }

        }
    }
}
#>
