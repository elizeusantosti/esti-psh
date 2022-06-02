function funcao_esti {
    foreach ($arg in $args) {
        $script = "$home\documents\WindowsPowerShell\esti\"
        if ("$script\$arg.ps1" | gci -file) {
            .$script\$arg.ps1
        }
        else
        {
            $url = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/main/$arg.ps1
            Invoke-Expression $($url.Content)
        }
    }
}

Set-Alias esti funcao_esti
