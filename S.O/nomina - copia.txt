#!/bin/sh
#
#Este script calcula la nomina de empleados de una empresa
#
#Guardar empleado
#Eliminar empleado
#Liquidar empleado
#
clear
opcion=0
while true
do
 echo "----------------------------------------"
 echo "EMPRESA XYZ"
 echo "----------------------------------------"
 echo "NOMINA JUNIO 2020"
 echo "Opciones: "
 echo "1. Crear funcionario"
 echo "2. Eliminar funcionario"
 echo "3. Liquidar - Listar nomina Liquidada"
 echo "4. terminar"
 echo "---------------------------------------"
 echo "Digite la opcion deseada: "
read opcion
case $opcion in
1) clear
   echo "Digite la siguiente informacion separado por coma(,) como se indica acontinuacion:"
   echo ""
   echo "Cedula,Nombre,Apellido,sueldo basico,valor horas extras,prima productividad,seguridad social,rentecion en la fuente"
   echo ""
   read empleado
   echo $empleado >>empleados;;
2) clear
   echo "Digite cedula del empleado a eliminar..."
   read cedula
   grep -i $cedula empleados
   grep -v $cedula empleados >> temporal
   rm empleados
   mv temporal empleados;;
3) clear
   echo "--------------------------------------------------------------"
   echo "                       EMPRESA XYZ                            "
   echo "--------------------------------------------------------------"
   echo "Cedula           Funcionario           Valor Neto        Firma"
   awk -F "," '{print $1 "              " $2 " " $3 "             " ($4 + $5 + $6 - $7 - $8)}' empleados
   echo "--------------------------------------------------------------";;

4)exit;;
*) echo "Opcion invalida, Digite nuevamente..."
   read nulo;;
esac
done
