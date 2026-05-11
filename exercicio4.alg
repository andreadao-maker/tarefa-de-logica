Algoritmo "BuscaBinariaDuplicatas"

Var
   vetor: vetor[1..10] de inteiro
   valor, inicio, fim, meio, i: inteiro
   encontrou: logico

Inicio

   escreval("Digite 10 numeros ordenados:")

   para i de 1 ate 10 faca
      leia(vetor[i])
   fimpara

   escre("Digite o valor procurado: ")
   leia(valor)

   inicio <- 1
   fim <- 10
   encontrou <- falso

   enquanto inicio <= fim faca

      meio <- (inicio + fim) div 2

      se vetor[meio] = valor entao

         encontrou <- verdadeiro

         escreval("Ocorrencias encontradas nas posicoes:")

         i <- meio

         enquanto (i >= 1) e (vetor[i] = valor) faca
            i <- i - 1
         fimenquanto

         i <- i + 1

         enquanto (i <= 10) e (vetor[i] = valor) faca
            escreval(i)
            i <- i + 1
         fimenquanto

         pare

      senao
         se vetor[meio] < valor entao
            inicio <- meio + 1
         senao
            fim <- meio - 1
         fimse
      fimse

   fimenquanto

   se nao encontrou entao
      escreval("Valor nao encontrado.")
   fimse

Fimalgoritmo
