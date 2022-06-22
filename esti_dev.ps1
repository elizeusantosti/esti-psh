#-INFORMAÇÃO-DO-REPOSITÓRIO------------------------------------------------
$branch = "dev"
$url = "https://raw.githubusercontent.com/elizeusantosti/esti/$branch"


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

$repo.arquivos.scripts.auto_install = $repo.arquivos.scripts.auto_install + "/" + "auto_install.ps1"
$repo.arquivos.scripts.backup = $repo.arquivos.scripts.backup + "/" + "backup.ps1"
$repo.arquivos.scripts.organizar = $repo.arquivos.scripts.organizar + "/" + "organizar.ps1"
