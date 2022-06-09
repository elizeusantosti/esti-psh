function dev {
    $lista = "uninstall","read","-branch"
    $parametro = foreach ($item in $lista){
        $posicao = [array]::LastIndexOf($args,"$item")+1
        if($posicao -ne 0) {
            $args[$posicao]
        }
        else
        {
            $null
        }
        
    }

    $uninstall = $parametro[0]
    $read = $parametro[1]
    $branch = $parametro[2]

    if($uninstall -eq "dev"){
        del Microsoft.Powershell_profile.ps1;del dev;del esti;exit
    }
    else
    {
        if($uninstall -eq "scoop"){
            scoop uninstall scoop -p
        }
    }

    if($read){$arquivo = $read}else{$arquivo = $args[0]}
    if($branch){$branch_atual = $branch}else{$branch_atual = "main"}

    try {$url = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/$branch_atual/scripts/$arquivo} catch {}
        if ($url.StatusCode -eq "200")
        {
            if($read){$url.content}else{Invoke-Expression $($url.content)}
        }
        else
        {
            Write-Host("A branch $branch_atual nao contem o arquivo $arquivo") -ForegroundColor Red
        }
}
