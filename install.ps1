Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/core.ps1 | Invoke-Expression

nova_pasta  $pasta_esti_scripts

foreach ($script in $scripts){
    download $script $main_scripts $pasta_esti_scripts
}

download profile.ps1 $main $pasta_principal\Microsoft.Powershell_profile.ps1

import profile.ps1
$profile