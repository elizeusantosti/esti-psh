$scripts_params = @{
    Arquivos = {Write-Host "Arquivos" -ForegroundColor Red}
    Organizar = {Write-Host "Organizar" -ForegroundColor Cyan}
}

New-Module -ScriptBlock {
    function esti ($script){
        $result = $scripts_params.GetEnumerator() | foreach {if ($_.key -eq $script) {$scripts_params.$script}}
        if (-not($result)) {"HELP MESSAGE"} else {Invoke-Command $result}
    }
    esti
}-ReturnResult
