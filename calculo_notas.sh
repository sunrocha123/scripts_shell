#!/usr/bin/env bash

echo '========================'
echo 'CÁLCULO DE MÉDIAS'
echo '========================'

read -p 'Digite seu nome: ' nome_aluno

echo 'Olá' $nome_aluno '! Bem-vindo ao nosso app!!'

read -p 'Digite a nota do primeiro bimestre: ' primeiro_bimestre
read -p 'Digite a nota do segundo bimestre: ' segundo_bimestre
read -p 'Digite a nota do terceiro bimestre: ' terceiro_bimestre
read -p 'Digite a nota do quarto bimestre: ' quarto_bimestre

soma_notas=$(expr $primeiro_bimestre + $segundo_bimestre + $terceiro_bimestre + $quarto_bimestre)
#echo 'Soma das notas:'$soma_notas
media_final=$(expr $soma_notas / 4)
#echo 'Cálculo final da média:'$media_final

if [ $media_final -lt 5 ];then
	echo 'Aluno reprovado!'
	echo 'Nota final:' $media_final
elif [ $media_final -ge 5 -a $media_final -le 6 ]; then
	echo 'Aluno de recuperação!'
	echo 'Nota até o momento:' $media_final
else
	echo 'Aluno aprovado!'
	echo 'Nota final:' $media_final
fi
