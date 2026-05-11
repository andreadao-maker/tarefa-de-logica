Algoritmo "MergeSort"

Var
   vetor: vetor[1..10] de inteiro
   i: inteiro

Procedimento Merge(var v: vetor[1..10] de inteiro; inicio, meio, fim: inteiro)
Var
   aux: vetor[1..10] de inteiro
   i, j, k: inteiro

Inicio

   i <- inicio
   j <- meio + 1
   k <- inicio

   enquanto (i <= meio) e (j <= fim) faca

      se v[i] < v[j] entao
         aux[k] <- v[i]
         i <- i + 1
      senao
         aux[k] <- v[j]
         j <- j + 1
      fimse

      k <- k + 1

   fimenquanto

   enquanto i <= meio faca
      aux[k] <- v[i]
      i <- i + 1
      k <- k + 1
   fimenquanto

   enquanto j <= fim faca
      aux[k] <- v[j]
      j <- j + 1
      k <- k + 1
   fimenquanto

   para k de inicio ate fim faca
      v[k] <- aux[k]
   fimpara

FimProcedimento

Procedimento MergeSort(var v: vetor[1..10] de inteiro; inicio, fim: inteiro)
Var
   meio: inteiro

Inicio

   se inicio < fim entao

      meio <- (inicio + fim) div 2

      MergeSort(v, inicio, meio)
      MergeSort(v, meio + 1, fim)

      Merge(v, inicio, meio, fim)

   fimse

FimProcedimento

Inicio

   escreval("Digite 10 numeros:")

   para i de 1 ate 10 faca
      leia(vetor[i])
   fimpara

   MergeSort(vetor, 1, 10)

   escreval()
   escreval("Vetor ordenado:")

   para i de 1 ate 10 faca
      escre(vetor[i], " ")
   fimpara

Fimalgoritmo
