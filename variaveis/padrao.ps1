# URL -----------------------------------------------------------------
$esti=@{
    main = "https://raw.githubusercontent.com/elizeusantosti/esti/main/"
    dev = "https://raw.githubusercontent.com/elizeusantosti/esti/dev/" 
}

$main=@{
    diretorios=@{
        variaveis = $esti.main+"variaveis/"
        modulos = $esti.main+"modulos/"
        scripts = $esti.main+"scripts/"
    }

    variaveis=@{
        padrao = $main.diretorios.variaveis+"padrao.ps1"
        instaladores = $main.diretorios.variaveis+"instaladores.ps1"
    }
    
    modulos=@{        
        esti=$main.diretorios.modulos+"esti.psm1"
        esti_functions = $main.diretorios.modulos+"esti_functions.psm1"
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
$pasta=@{
    powershell = "$home\documents\windowspowershell\"

    variaveis = @{
        esti = $pasta.powershell+"variaveis\esti\"
    }

    modules = @{
        esti = $pasta.powershell+"modules\esti\"
        esti_functions = $pasta.powershell+"modules\esti_functions\"
    }

    scripts = @{
        esti = $pasta.powershell+"scripts\esti\"
    }
}
# PASTAS -----------------------------------------------------------



# ARQUIVOS -----------------------------------------------------------
$local=@{
    variaveis=@{
        padrao = $pasta.variaveis.esti+"padrao.ps1"
        instaladores = $pasta.variaveis.esti+"instaladores.ps1"
    }

    scripts=@{
        arquivos = $pasta.scripts.esti+"arquivos.ps1"
        automatizar = $pasta.scripts.esti+"automatizar.ps1"
        backup = $pasta.scripts.esti+"backup.ps1"
        organizar = $pasta.scripts.esti+"organizar.ps1"
    }
    modulos=@{
        esti = $pasta.modules.esti+"esti.ps1"
        esti_functions = $pasta.modules.esti_functions+"esti_functions.ps1"
    }
}
# ARQUIVOS -----------------------------------------------------------