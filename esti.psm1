$caminho = split-path -parent $MyInvocation.MyCommand.Definition

try {
    Invoke-Expression -Command '.$caminho\esti\base.ps1'
}
catch {
    Write-Host $_.Exception.Message -ForegroundColor red
}


function esti{
    param(
        [CmdletBinding()][Parameter(mandatory, position=0)]$script
    )
    try {
        .$pasta_scripts\$script.ps1
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor red
    }
}
