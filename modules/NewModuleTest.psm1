$scripts = @{
    Arquivos = {Write-Host "Arquivos" -ForegroundColor Red}
    organizar = {Write-Host "Organizar" -ForegroundColor Cyan}
}

New-Module -ScriptBlock {
    function esti ($script){
        if (-not($script)) {"HELP MESSAGE"} else {Invoke-Command $scripts[$script]}
    }
    esti
}-ReturnResult
