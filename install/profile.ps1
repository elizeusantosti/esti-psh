function dev {
    $script = $args[0]

    $branch_position = [array]::LastIndexOf($args,"-branch")+1
    if($branch_position -ne 0){$branch = $args[$branch_position]}else{$branch = "main"}

    Invoke-WebRequest -useb "https://raw.githubusercontent.com/bredsan/esti/$branch/scripts/$script.ps1" | Invoke-Expression
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
