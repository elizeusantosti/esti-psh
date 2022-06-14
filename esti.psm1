function esti{
    param(
        [CmdletBinding()][Parameter(mandatory, position=0)]$script
    )
    try {
        .$pasta_scripts\esti\$script.ps1
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor red
    }
}

function desinstalar{
    param(
        [CmdletBinding()][Parameter(mandatory, position=0)]$modulo
    )
    try {
        rm -r -fo $modules\$modulo
        rm -r -fo $modules\"$modulo"_functions
        rm -r -fo $pasta_scripts\$modulo
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor red
    }
}