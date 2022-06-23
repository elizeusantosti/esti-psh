function database(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $import = $main.diretorios.database + "$script.ps1"
    Invoke-WebRequest -Uri $import | Invoke-Expression
}