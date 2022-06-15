esti_importar variaveis -local
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