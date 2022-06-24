$branch = merge"
$url = "https://raw.githubusercontent.com/elizeusantosti/esti/$branch"

#

$global:estrutura=@{
    Core=@{
        esti_database = "esti_database.ps1"
        esti_functions = "esti_functions.ps1"
    }

    Modules=@{
        esti = "esti.psm1"
    }

    Scripts=@{
        auto_install = "auto_install.ps1"
        backup = "backup.ps1"
        organizar = "organizar.ps1"
    }
}
