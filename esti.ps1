Invoke-Expression -Command './esti_database.ps1'
Invoke-Expression -Command './esti_functions.ps1'

# Cria Pastas ----------------------------------------------
#criar_pasta $pasta.core
#criar_pasta $pasta.modules
#-----------------------------------------------------------



# Baixa Modulos ----------------------------------------------------------
foreach ($item in $($arquivo.GetEnumerator())) {
    foreach ($item2  in $arquivo[$item.key].Keys) {
       $diretorio[$item.key] + $arquivo[$item.key][$item2]
    }
}
#-------------------------------------------------------------------------

# Baixa a base de dados --------------------------------------------------
# $diretorio.core.getenumerator() | foreach (baixar $_.value)
#
--------------------------------------------------------------------------
# Baixa Scripts ----------------------------------------------------------
#$scripts.values | ForEach-Object {esti_baixar $_ $pasta.scripts.esti}
#-------------------------------------------------------------------------
