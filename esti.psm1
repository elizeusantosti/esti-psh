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
        $pastas = "$modules\$modulo", "$modules\"$modulo"_functions", $pasta_scripts\$modulo
        foreach($pasta in $pastas){
            if($pasta -match "esti"){rm -r -fo $pasta}
        }
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor red
    }
}