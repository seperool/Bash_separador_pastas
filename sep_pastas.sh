#!/bin/bash

cd /c/Users/seper/Downloads; # caminho

echo "Todos os arquivos no diretório: "
ls # todas as pastas no diretorio

# inicialização de variaveis
declare -A pastas_dir; #declarando um array
i=0; # inicializando o contador do array

for arqs in $(ls) #percorre o ls, pasta por pasta
do
	pastas_dir[$i]=$arqs; # salva a pasta da iteração no array pastas
	#echo "$arqs"
	((i=$i+1));
done

# vetor pastas selecionadas para separar

declare -A pastas;
#pastas=("" "" ...);

# criando pasta trabalho
mkdir pasta_trabalho

# percorrer pastas_dir com pastas
for pasta in pastas
do
	for arquivo in pastas_dir
	do
		pasta="$pasta""-OR-*"
		if [ "$pasta"* == "$arquivos" ]
		then
			$(mv $arquivos pasta_trabalho)
		fi
	done
done

# TESTAR
# if, ver se caracteres especiais funcionam