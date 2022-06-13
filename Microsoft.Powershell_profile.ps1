$caminho = split-path -parent $MyInvocation.MyCommand.Definition

$esti_local =  Invoke-Expression -Command $caminho\esti\scripts\esti.ps1

function esti {
    # Carrega o perfil ESTI
    $esti_local
}