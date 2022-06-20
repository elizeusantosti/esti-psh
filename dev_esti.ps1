# Verifica e retorna os arquivos existentes no repositório.
$files_in_repo = $files.values.values | ForEach-Object {
    Try {
        Invoke-WebRequest "$url/$_"
    }
    Catch {
        $_.status -eq "200"
    }
}

$files.values.values | foreach {
   if ($_ -notcontains $files_in_repo) {
       write-host("$repo/$branch/$_ não existe")
   }
}


function esti_is_installed {
    # Verifica se esti esta instalado, rodando o proprio comando esti. 
     if ([bool](Get-Command -Name 'esti' -ErrorAction SilentlyContinue)) { 
         "esti ja esta instalado." 
     }
}


function folders_exist {
    # Verifica a existencia das pasta no local.
    $pastas.values | ForEach-Object {
        Try {
            test-path $_
        }
        Catch {
            Write-Host $_.Exception.Message -ForegroundColor Red
        }
    }
}

if ($esti_is_installed -eq False) {install_esti} else {Write-Host("esti já está instalado.") -foregroundcolor red}
