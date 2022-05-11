# Puxando os repositórios

Ao usar o WGET ou CURL o GITHUB está servindo uma página HTML ao invés do arquivo, então a melhor opção é baixar o arquivo RAW servido como HTML, porém usando os parâmetros de redirecionamento -o, >> ou -OutFile.


# Testar parâmetros

1. wget https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/organizador.ps1 >> organizador.ps1

2. curl https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/organizador.ps1 -O organizador.ps1


# Alternativas


Umas das alternativas seria usar o git ou gitlab em um servidor suckless, servindo os arquivos em si, para uso posterior com WGET.
