#!/bin/bash

#Script faz a separação das pastas que tem arquivo de fotos e cadastro.

## Pegando nome das pastas no diretorio fotos

#Caminho pasta fotos
cd /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia/Fotos

echo "Todos os arquivos no diretório fotos: "
ls # todas as pastas no diretorio

# inicialização de variaveis
declare -A pastas_dir_fotos; #declarando um array
i=0; # inicializando o contador do array

for arqs_fotos in $(ls) #percorre o ls, pasta por pasta
do
	pastas_dir_fotos[$i]=$arqs_fotos; # salva a pasta da iteração no array pastas
	#echo "$arqs_fotos"
	((i=$i+1));
done

## Pegando nome das pastas no diretorio cadastro

#Caminho pasta cadastro
cd /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia/orcamentos_individual

echo "Todos os arquivos no diretório orcamentos_individual: "
ls # todas as pastas no diretorio

# inicialização de variaveis
declare -A pastas_dir_cad; #declarando um array
j=0; # inicializando o contador do array

for arqs_cad in $(ls) #percorre o ls, pasta por pasta
do
	pastas_dir_cad[$j]=$arqs_cad; # salva a pasta da iteração no array pastas
	#echo "$arqs_cad"
	((j=$j+1));
done

## Criando diretorio pastas_par

cd /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia
mkdir dir_par

## Comparando lista com nomes dos arquivos nos dois diretorios
## se nomes iguais, copiar as duas pastas para o diretorio novo criado (dir_par)

echo "cadastros com par: "
for cad in pastas_dir_cad
do
	for foto in pastas_dir_fotos
	do
		if [ $cad == $foto ]
		then
			cd /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia/Fotos
			$(cp $foto /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia/dir_par)
			cd /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia/orcamentos_individual
			$(cp $cad /c/Users/Sergio/Documents/Orcamento/Complexo_do_Alemao/4MEDICAO-05_01_23/Nova_Brasilia/dir_par)
			echo $cad
		fi
	done
done

echo "Fim"
