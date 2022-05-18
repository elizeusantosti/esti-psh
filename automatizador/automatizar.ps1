Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iwr -useb get.scoop.sh | iex
scoop install git
scoop bucket add extras
scoop install wpsoffice
scoop install googlechrome
