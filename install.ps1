# Define a funcao para importar arquivos do github. 
function import([string]$arquivo){
    Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/$arquivo.ps1 | Invoke-Expression
}

# Importa o core do programa.
import core

# Se não existir cria a respectiva pasta de destino.
nova_pasta scripts $pasta_esti


foreach ($script in $scripts){
    download $script $scripts_url $pasta_esti
}
