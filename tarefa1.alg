Algoritmo "InsertionSort_Deslocamentos"

Var
   vetor: vetor[1..10] de inteiro
   i, j, chave, deslocamentos: inteiro

Inicio

   escreval("Digite 10 numeros:")

   para i de 1 ate 10 faca
      leia(vetor[i])
   fimpara

   deslocamentos <- 0

   para i de 2 ate 10 faca

      chave <- vetor[i]
      j <- i - 1

      enquanto (j >= 1) e (vetor[j] > chave) faca
         vetor[j + 1] <- vetor[j]
         deslocamentos <- deslocamentos + 1
         j <- j - 1
      fimenquanto

      vetor[j + 1] <- chave

   fimpara

   escreval()
   escreval("Vetor ordenado:")

   para i de 1 ate 10 faca
      escre(vetor[i], " ")
   fimpara

   escreval()
   escreval("Quantidade de deslocamentos: ", deslocamentos)

Fimalgoritmo
