#-INFORMAÇÃO-DO-REPOSITÓRIO------------------------------------------------
$branch = "dev"
$url = "https://raw.githubusercontent.com/elizeusantosti/esti/$branch"


# Define a estrutura do projeto.
$estrutura=@{
    core=@{
        esti_database = "esti_database.ps1"
        esti_functions = "esti_functions.ps1"
    }
    modules=@{
        esti = "esti.psm1"
    }
    scripts=@{
        auto_install = "auto_install.ps1"
        backup = "backup.ps1"
        organizar = "organizar.ps1"
    }
}

$estrutura.getenumerator() | foreach {
    nome = $_.key
    $estrutura[$nome]
}
