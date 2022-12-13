#!/bin/sh

echo "CPU"  
modelo=$(lscpu | grep "Model name" | cut -d':' -f2- | awk '{print $1 $2 $3 $4 $5 $6}')
Familia_CPU=$(lscpu | grep "CPU family" |cut -d':' -f2- | awk '{print $1}' )
nucleos=$( lscpu | grep "Core(s) per socket" | cut -d':' -f2- | awk '{print $1}' )
core=$(lscpu -e=CORE | tail -n1 )

echo Modelo .........................................."$modelo"
echo Família CPU: ........................................."$Familia_CPU"
echo Quantidade de núcleos: ..........................."$nucleos"
echo CORE: ............................................."$core"


echo "MEMÓRIA"
Memoria_Livre=$(free --bytes | grep "Mem" | awk '{print $4}' )
Mem_total=$(free --bytes | grep "Mem" | awk '{print $2}' )
Swap_total=$(free | grep "Swap" | awk '{print $2}' )
Swap_free=$(free  | grep "Swap" | awk '{print $4}' )

echo Memória Livre: ........................................."$Memoria_Livre"
echo Memória total: ........................................"$Mem_total"
echo Swap Total: ............................................"$Swap_total"
echo Swap Free: ............................................."$Swap_free"


