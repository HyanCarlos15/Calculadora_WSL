
#!/bin/bash


#!/bin/bash 
       
echo "escolha a operação:"                                                                                              
echo "1. adição"                                                                                                       
echo "2. subtração"                                                                                                    
echo "3. Multiplicação"                                                                                                
echo "4. Divisão "
                                                                                                     
read -p "Digite a opção(1/2/3/4): " operacao 
read -p "Digite o primeiro Numero"  num1                                                                                
read -p "Digite o Segundo Numero: " num2

case $operacao in                                                                                                       
1) resultado=$(echo "$num1 + $num2"|bc) ;;                                                                              
2) resultado=$(echo "$num1 - $num2"|bc) ;;                                                                              
3) resultado=$(echo "$num1 * $num2"|bc) ;;                                                                              
4) resultado=$(echo "scale=2; $num1 / $num2"|bc) ;;
                                                                     
*) echo "opção invalida" ; exit 1 ; 
esac   
echo "o resultado é: $resultado"
