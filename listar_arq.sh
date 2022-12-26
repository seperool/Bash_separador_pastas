#!/bin/bash

cd /c/Users/seper/Downloads; # caminho

echo "Todos os arquivos no diretório: "
ls # todas as pastas no diretorio

# inicialização de variaveis
declare -A pastas; #declarando um array
i=0; # inicializando o contador do array

for arqs in $(ls) #percorre o ls, pasta por pasta
do
	pastas[$i]=$arqs; # salva a pasta da iteração no array pastas
	#echo "$arqs"
	((i=$i+1));
done

echo "O arquivo número 2 é: "
echo ${pastas[1]} #pasta na segunda posição do array
echo "O número de arquivos no diretorio é:"
echo "${#pastas[@]}" #tamanho do array