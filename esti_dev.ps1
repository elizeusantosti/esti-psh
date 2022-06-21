#-INFORMAÇÃO-DO-REPOSITÓRIO------------------------------------------------
$ramificacao = "dev"
$url = "https://raw.githubusercontent.com/elizeusantosti/esti/$ramificacao"


# Define a estrutura do projeto.
$estrutura=@{
    database=@{}
    modules=@{}
    scripts=@{}
}

# Define pastas do repositorio com base na estrutura.
$repo=@{}
$repo.diretorio=@{}
$estrutura.GetEnumerator() | ForEach-Object{
    $repo.diretorio.add($_.key, $url + "/" + $_.key)
}

# Define os arquivos do repositório
$repo.arquivos=@{}
$repo.arquivos.databases=@{}
$repo.arquivos.databases.esti = $repo.diretorio.databases + "/" + "esti.ps1"

$repo.arquivos.modules=@{}
$repo.arquivos.modules.esti = $repo.diretorio.modules.esti + "/" + "esti.psm1"
$repo.arquivos.modules.custom_functions = $repo.diretorio.modules.custom_functions + "/" + "custom_functions.psm1"

$repo.arquivos.scripts=@{}
$repo.arquivos.scripts.arquivos=@{}
$repo.arquivos.scripts.organizar=@{}
$repo.arquivos.scripts.auto_install=@{}

#




























<#
# databases
$database=@{}
$database.esti = "esti.ps1"
$database.instaladores = "instaladores.ps1"
# modules
$module=@{}
$module.esti = "esti.psm1"
$module.custom_functions = "custom_functions.psm1"
# scripts
$script=@{}
$script.organizar = "organizar.ps1"
$script.backup = "backup.ps1"
#-URLS-----------------------------------------------------------------
$url=@{}
# directories
$url.directory=@{}

# FILES
$url.files=@{}
# database
$url.files.database=@{}
$database.GetEnumerator() | ForEach-Object{
    $url.files.database.add($_.Key, $_.Value)
}
#>
#---------------------------------------------------------------------
