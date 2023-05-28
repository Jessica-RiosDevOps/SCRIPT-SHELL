@echooff

rem Ativando caracteres especiais no terminal.

chcp 65001

rem limpando o terminal

cls

echo Mover arquivos PDF soltos em Downloads para a pasta PDF

rem Acessando a pasta de Downloads

cd C:\Users\jessi\Downloads 

rem Criando o diretório PDF em Downloads

mkdir PDF  C:\Users\jessi\Downloads 

rem Movendo os arquivos PDF's soltos para a pasta PDF

move C:\Users\jessi\Downloads\*.pdf  C:\Users\jessi\Downloads\PDF
