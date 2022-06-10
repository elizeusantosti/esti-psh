$dev = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/dev/dev.ps1 | Invoke-Expression
$esti = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/dev/esti.ps1 | Invoke-Expression

function dev {
    # Carrega o perfil DEV
    $dev
}

function esti {
    # Carrega o perfil ESTI
    $esti
}