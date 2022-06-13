function import($arquivo){
    try {
        Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/$arquivo | Invoke-Expression
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}