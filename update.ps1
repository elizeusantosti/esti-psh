# Invoke core functions
Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/core.ps1 | Invoke-Expression

# Check_install

# Download all scripts from main
foreach ($script in $scripts){
    download $script $scripts_url $pasta_esti
}