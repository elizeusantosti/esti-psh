# Puxando os repositórios

Ao usar o WGET ou CURL o GITHUB está servindo uma página HTML ao invés do arquivo, então a melhor opção é baixar o arquivo RAW servido como HTML, porém usando os parâmetros de redirecionamento -o, >> ou -OutFile.


# Testar parâmetros

1. wget -O install.bat https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/install.bat



# Alternativas

Umas das alternativas seria usar o git ou gitlab em um servidor suckless, servindo os arquivos em si, para uso posterior com WGET.
