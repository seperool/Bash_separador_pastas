#!/bin/bash

cd /home/serigo/Programação/Bash/Trabalho/Separador_Pastas

#criar um arquivo qualquer
touch arquivo.txt

#criar nova pasta
mkdir nova_pasta

echo "Pasta e arquivo criados: "

ls

#mover arquivo (com caractere especial) para dentro da pasta
mv arquivo.* nova_pasta

cd nova_pasta

echo "Dentro da nova pasta: "

ls

echo "Funcionou!!!"