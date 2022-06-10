$esti = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/dev/esti.ps1 | Invoke-Expression
$dev = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/dev/dev.ps1 | Invoke-Expression

function esti {
    # Carrega o perfil DEV
    $esti
}

function dev {
    # Carrega o perfil DEV
    $dev
}