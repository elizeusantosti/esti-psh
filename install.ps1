Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/core.ps1 | Invoke-Expression

nova_pasta  $pasta_esti

foreach ($script in $scripts){
    download $script $scripts_url $pasta_esti
}