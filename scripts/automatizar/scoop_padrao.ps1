Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iwr -useb get.scoop.sh | iex

scoop install lessmsi; scoop config MSIEXTRACT_USE_LESSMSI $true

scoop install git

scoop bucket add extras
scoop bucket add java

scoop install wpsoffice
scoop install googlechrome
scoop install openjdk