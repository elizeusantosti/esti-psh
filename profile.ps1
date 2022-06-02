$pasta = "$home\documents\windowspowershell\"

$offline = $pasta | gci -file

$repo = "https://raw.githubusercontent.com/bredsan/esti/"

$online = try {invoke-webrequest $repo/$arg.ps1} catch {}

if (invoke-expression $($online.statuscode -eq "200")) {
   invoke-expression $($repo/$online)
}
else
{
   write-host("O arquivo $online não existe no repositório $repo")
}




function esti{
   foreach($arg in $args) {
      
   }
}







function esti {
    foreach ($arg in $args) {
        $script = $arg.ps1

        
        $offline = "$home\documents\WindowsPowerShell\esti\$arg.ps1"
        if ($offline | gci -file -ErrorAction SilentlyContinue) {
            .$offline
        }
        else
        {
            Write-Host "O script $offline não existe." -ForegroundColor Red  
        }
            try {$online = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/main/$arg.ps1} catch {}
            if ($online.StatusCode -eq "200"){
                Invoke-Expression $($online.Content)
            }
            else
            {
                Write-Host "O script https://raw.githubusercontent.com/bredsan/esti/main/$arg.ps1 não existe." -ForegroundColor Red
            }
            
    }
}
