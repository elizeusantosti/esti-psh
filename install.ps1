Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/base.ps1 | Invoke-Expression

nova_pasta  $pasta_scripts

foreach ($script in $scripts){
    download $script $main_scripts $pasta_scripts
}

download base.ps1 $main $esti
download perfil.ps1 $main $powershell\Microsoft.Powershell_profile.ps1

importar $main\profile.ps1 remoto