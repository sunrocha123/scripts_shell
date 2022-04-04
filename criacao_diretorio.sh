#!/usr/bin/env bash

read -p 'Digite o nome do novo diretório:' nome_diretorio

cd ~/$nome_diretorio/A_Enviar

parRet=$?

if [ $parRet -eq 0 ]; then
	echo 'Diretório já existe!'
else
	mkdir -p ~/$nome_diretorio/A_Enviar
	echo 'Diretório criado!'
fi
