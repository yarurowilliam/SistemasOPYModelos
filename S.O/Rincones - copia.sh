factorial()
{
    clear
    fact=1
    tempo=0
    echo "Digite nro factorial a calcular"
    read nro
    tempo=$nro 
    while (test $tempo -gt 1)
    do
        let fact=$fact*$tempo
        let tempo=$tempo-1
    done
    echo "El nro factorial es $fact"
    tempo=0
    fact=1
    read nulo 
}
areaCirculo()
{
    echo "Ingrese el radio de la circulo"
    read radio
    area=$(echo "scale=2; (3.1416)*($radio*$radio)" | bc -l)
    echo "el area de la circulo de radio $radio es $area"
    read nulo 
}
while true   
do
    clear
    echo "    Opciones:"
    echo "      1.Factorial"
    echo "      2. Area Circulo"                                              
    echo "      3. Terminar"
    echo " "
    echo -e                    "Digite opcion deseada ...\c"
    read opcion
    case $opcion in
        1) factorial;;
        2) areaCirculo;;
        3) exit;;
        *) echo " Error digite de nuevo (Presione enter)"
            read nulo
        esac
done