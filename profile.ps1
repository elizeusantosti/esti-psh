$caminho = split-path -parent $MyInvocation.MyCommand.Definition

function esti {
    foreach ($arg in $args) {
        & "$caminho\esti\scripts\$arg.ps1"
    }
}