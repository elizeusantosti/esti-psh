function esti_online {
    foreach ($arg in $args) {
        $url = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/main/$arg.ps1
        Invoke-Expression $($url.Content)
    }
}

Set-Alias esti esti_online