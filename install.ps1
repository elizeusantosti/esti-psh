function import([string]$arquivo){
    Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/$arquivo.ps1 | Invoke-Expression
}

import esti_core

nova_pasta scripts $pasta_esti


foreach ($script in $scripts){
    download $script $scripts_url $pasta_esti
}