#!/bin/bash
# Script shell que realiza Areas y Volumenes para el 3 parcial de SO

areaTriangulo()
{
    echo "Ingrese la base del triangulo"
    read base
    echo "Ingrese la altura del triangulo"
    read altura
    area=$(echo "scale=2; ($base*$altura)/2" | bc -l)
    echo "El area del triangulo de base $base y altura $altura es $area"
}
areaCircunferencia()
{
    echo "Ingrese el radio de la circunferencia"
    read radio
    area=$(echo "scale=2; (3.1416)*($radio*$radio)" | bc -l)
    echo "el area de la circunferencia de radio $radio es $area"
}
areaCilindro()
{
    echo "Ingrese el radio de la circunferencia en la base del cilindro"
    read radio
    echo "Ingrese la altura del cilindro"
    read altura
    area=$(echo "scale=2; 2*(3.1416)*($radio) *($radio+$altura)" | bc -l)
    echo "el area del cilindro de radio $radio y altura $altura es $area"
}
areaTrapecio()
{
    echo "Ingrese la base 1 del trapecio"
    read base1
    echo "Ingrese la base 2 del trapecio"
    read base2
    echo "Ingrese la altura del trapecio"
    read altura
    area=$(echo "scale=2; (($base1+$base2)*$altura)/2" | bc -l)
    echo "el area del trapecio con bases $base1 y $base2, y altura $altura es $area"
}
volumenEsfera()
{
    echo "Ingrese el radio de la esfera"
    read radio
    area=$(echo "scale=2; (4/3)*(3.1416)*($radio*$radio*$radio)" | bc -l)
    echo "el volumen de la esfera de radio $radio es $area"
}
# Programa principal
while true   
do
    clear
    echo " "
    echo " "
    echo " Menu Areas y Volumenes"
    echo " "
    echo "    Opciones:"
    echo "      1. Area Triangulo"
    echo "      2. Area Circunferencia"                                              
    echo "      3. Area Cilindro"
    echo "      4. Area Trapecio"
    echo "      5. Volumen Esfera"
    echo "      6. Terminar"
    echo " "
    echo -e                    "Digite opcion deseada ...\c"
    read opcion
    case $opcion in
        1) areaTriangulo;;
        2) areaCircunferencia;;
        3) areaCilindro;;
        4) areaTrapecio;;
        5) volumenEsfera;;
        6) exit;;
        *) echo " Error digite de nuevo (Presione enter)"
            read nulo
        esac
    echo " Para terminar digite ctl-Z o presione enter para continuar"
    read nulo
done
