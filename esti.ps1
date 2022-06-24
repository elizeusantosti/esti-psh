# Setar variaveis, importar base de dados variaveis--------------------------------------------------------------------------------
$branch = "merge"
$url = "https://raw.githubusercontent.com/elizeusantosti/esti/$branch
Invoke-WebRequest -Uri "$url/esti_functions.ps1" | Invoke-Expression
Invoke-WebRequest -Uri "$url/esti_database.ps1" | Invoke-Expression
#----------------------------------------------------------------------------------------------------------------------------------
# Configura as pastas e arquivos.
$estrutura.getenumerator() | where-object($_ -notmatch "modules") | foreach {
    $
}

