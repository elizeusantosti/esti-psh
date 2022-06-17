# URL -----------------------------------------------------------------
$global:esti=@{
    main = "https://raw.githubusercontent.com/elizeusantosti/esti/main/"
    dev = "https://raw.githubusercontent.com/elizeusantosti/esti/dev/" 
}

$global:main=@{
    diretorios=@{
        importar = $esti.main+"importar/"
        modulos = $esti.main+"modulos/"
        scripts = $esti.main+"scripts/"
    }

    importar=@{
        variaveis = $main.diretorios.importar+"variaveis.ps1"
        functions = $main.diretorios.importar+"functions.ps1"
        instaladores = $main.diretorios.importar+"instaladores.ps1"
    }
    
    modulos=@{        
        esti=$main.diretorios.modulos+"esti.psm1"
        custom_functions = $main.diretorios.modulos+"custom_functions.psm1"
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

    importar = @{
        esti = $pasta.powershell+"importar\esti\"
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
    importar=@{
        variaveis = $pasta.importar.esti+"variaveis.ps1"
        functions = $pasta.importar.esti+"functions.ps1"
        instaladores = $pasta.importar.esti+"instaladores.ps1"
    }

    scripts=@{
        arquivos = $pasta.scripts.esti+"arquivos.ps1"
        automatizar = $pasta.scripts.esti+"automatizar.ps1"
        backup = $pasta.scripts.esti+"backup.ps1"
        organizar = $pasta.scripts.esti+"organizar.ps1"
    }
    modulos=@{
        esti = $pasta.modules.esti+"esti.ps1"
        custom_functions = $pasta.modules.custom_functions+"custom_functions.ps1"
    }
}
# ARQUIVOS -----------------------------------------------------------