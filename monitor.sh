#!/bin/bash
#-------------------------------------------------------------------------
# AUTOR THIAGO MOREIRA
# FUNÇAO DO PROGRAMA: MONITORAR UMA APLICAÇÃO QUE ESTA RODANDO E
# NÃO PERMITIR QUE A APLICAÇÃO FIQUE PARADA
#-------------------------------------------------------------------------

#-------------------------------------------------------------------------
# Variáveis
Aux='2'  #AUXILIAR PARA COMPARAÇÃO

#-------------------------------------------------------------------------
# __BEGIN_MAIN__
while :
do	
	Nlinha=`ps aux | grep -v grep| grep -i $1| wc -l` #VERIFICA QUANTIDADE DE VEZES QUE APARECE O NOME DA APLICAÇÃO DIGITADA PELO USUARIO
	if [ "$Nlinha" -gt "$Aux" ]; then                 #VERIFICA SE O NUMERO DE VEZES É MAIOR QUE AUX
		clear
#-------------------------------------------------------------------------
#IMPRIME CABEÇALHO
		echo "___________________________________________"
		echo "Autor: Thiago Moreira de Freitas"
		echo "___________________________________________"
#-------------------------------------------------------------------------
		echo "STATUS DO $1"		
		echo "PROGRAMA ESTA SENDO EXECUTADO!"
		sleep 2
	else
		clear
#-------------------------------------------------------------------------
#IMPRIME CABEÇALHO
		echo "___________________________________________"
		echo "Autor: Thiago Moreira de Freitas"
		echo "___________________________________________"
#-------------------------------------------------------------------------
		echo "STATUS DO $1"		
		echo "PROGRAMA NAO ESTA SENDO EXECUTADO"
		sleep 2
		$1&
		echo "PROGRAMA FOI INICIADO"
		sleep 2
	fi
	
	

done
# __END_MAIN__
