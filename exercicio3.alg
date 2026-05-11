Algoritmo "OrdenarMatrizPorLinhas"

Var
   matriz: vetor[1..5,1..5] de inteiro
   i, j, k, temp: inteiro

Inicio

   escreval("Digite os valores da matriz 5x5:")

   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         leia(matriz[i,j])
      fimpara
   fimpara

   para i de 1 ate 5 faca

      para j de 1 ate 4 faca
         para k de j + 1 ate 5 faca

            se matriz[i,j] > matriz[i,k] entao
               temp <- matriz[i,j]
               matriz[i,j] <- matriz[i,k]
               matriz[i,k] <- temp
            fimse

         fimpara
      fimpara

   fimpara

   escreval()
   escreval("Matriz ordenada por linhas:")

   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         escre(matriz[i,j], " ")
      fimpara
      escreval()
   fimpara

Fimalgoritmo
