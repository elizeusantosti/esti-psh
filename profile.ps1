$caminho = split-path -parent $MyInvocation.MyCommand.Definition

function backup{
    [[CmdletBinding()]
    param (
        [Parameter()]
        [TypeName]
        $origem
    )]
}
function esti {
    foreach ($arg in $args) {
        & "$caminho\esti\scripts\$arg.ps1"
    }
}