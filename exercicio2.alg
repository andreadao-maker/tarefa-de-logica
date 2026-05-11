Algoritmo "PosicaoInsercao"

Var
   vetor: vetor[1..10] de inteiro
   valor, posicao, i: inteiro

Funcao PosInserir(v: vetor[1..10] de inteiro; tam, valor: inteiro): inteiro
Var
   k: inteiro
Inicio

   para k de 1 ate tam faca
      se valor < v[k] entao
         retorne k
      fimse
   fimpara

   retorne tam + 1

FimFuncao

Inicio

   escreval("Digite 10 numeros ordenados:")

   para i de 1 ate 10 faca
      leia(vetor[i])
   fimpara

   escre("Digite o valor a inserir: ")
   leia(valor)

   posicao <- PosInserir(vetor, 10, valor)

   escreval("O valor deve ser inserido na posicao: ", posicao)

Fimalgoritmo
