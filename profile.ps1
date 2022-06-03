function esti{
    foreach ($arg in $args){
        $local = "$home\documents\WindowsPowershell\esti"
        $repositorio = "https://raw.githubusercontent.com/bredsan/esti/main"
        $arquivo_atual = "$arg.ps1"
        $arquivos_locais = $local | Get-ChildItem -File
        if($arquivos_locais -match $arquivo_atual){
            .$local\$arquivo_atual
        }
        else
        {
            Write-Host("A pasta local nao contem o arquivo $arquivo_atual") -ForegroundColor Red
            Write-Host("Iniciando pesquisa no repositorio $repositorio")
            try {$online = Invoke-WebRequest $repositorio/$arg.ps1} catch {}
            if ($online.StatusCode -eq "200"){
                Invoke-Expression $($online.Content)
            }
            else
            {
                Write-Host "O script $repositorio/$arg.ps1 não existe." -ForegroundColor Red
            }

        }
    }
}
