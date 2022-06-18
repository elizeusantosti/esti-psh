# URL -----------------------------------------------------------------
$global:esti=@{
    main = "https://raw.githubusercontent.com/elizeusantosti/esti/main/"
    dev = "https://raw.githubusercontent.com/elizeusantosti/esti/dev/" 
}

$global:main=@{
    diretorios=@{
        database = $esti.main+"database/"
        modules = $esti.main+"modules/"
        scripts = $esti.main+"scripts/"
    }

    database=@{
        variaveis = $main.diretorios.database+"variaveis.ps1"
        functions = $main.diretorios.database+"functions.ps1"
        instaladores = $main.diretorios.database+"instaladores.ps1"
    }
    
    modules=@{        
        esti=$main.diretorios.modules+"esti.psm1"
        custom_functions = $main.diretorios.modules+"custom_functions.psm1"
    }

    scripts=@{
        arquivos = $main.diretorios.scripts+"arquivos.ps1"
        automatizar = $main.diretorios.scripts+"automatizar.ps1"
        backup = $main.diretorios.scripts+"backup.ps1"
        organizar = $main.diretorios.scripts+"organizar.ps1"
    }
}
# URL -----------------------------------------------------------------



# PASTAS -----------------------------------------------------------
$global:pasta=@{
    powershell = "$home\documents\windowspowershell\"

    database = @{
        esti = $pasta.powershell+"database\esti\"
    }

    modules = @{
        esti = $pasta.powershell+"modules\esti\"
        custom_functions = $pasta.powershell+"modules\custom_functions\"
    }

    scripts = @{
        esti = $pasta.powershell+"scripts\esti\"
    }
}
# PASTAS -----------------------------------------------------------



# ARQUIVOS -----------------------------------------------------------
$global:local=@{
    database=@{
        variaveis = $pasta.database.esti+"variaveis.ps1"
        functions = $pasta.database.esti+"functions.ps1"
        instaladores = $pasta.database.esti+"instaladores.ps1"
    }

    scripts=@{
        arquivos = $pasta.scripts.esti+"arquivos.ps1"
        automatizar = $pasta.scripts.esti+"automatizar.ps1"
        backup = $pasta.scripts.esti+"backup.ps1"
        organizar = $pasta.scripts.esti+"organizar.ps1"
    }
    modules=@{
        esti = $pasta.modules.esti+"esti.ps1"
        custom_functions = $pasta.modules.custom_functions+"custom_functions.ps1"
    }
}
# ARQUIVOS -----------------------------------------------------------