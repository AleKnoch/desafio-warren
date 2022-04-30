algoritmo "DesafioWarren1"

//---------------------------------------------------------------
// Funções
//---------------------------------------------------------------

//Retorna número com as posições invertidas. Ex 309 resulta em 903
/// //wagnergaspar.com/duvida-como-inverter-um-numero-com-a-linguagem-portugol/#:~:text=Observe%20que%20inverter%20um%20n%C3%BAmero,obtemos%20o%20n%C3%BAmero%20original%20invertido.
funcao    ObterReverso(numeroReverter:inteiro):inteiro
var
   numeroReverso : inteiro
inicio

   numeroReverso <- 0

   enquanto numeroReverter >0 faca
      numeroReverso <- numeroReverso*10
      numeroReverso <- numeroReverso + ( numeroReverter %10)
      numeroReverter <- Int(numeroReverter /10)
   fimenquanto

   retorne numeroReverso
fimfuncao
//---------------------------------------------------------------



//---------------------------------------------------------------
// Programa
//---------------------------------------------------------------
var

   numero, numeroReverso, compNumero, compReverso, soma, limiteSoma : inteiro

inicio

   // Soma de n com reverso(n) não deve passar este limite
   limiteSoma <- 1000000

   //Começar em 11 pois de 1 a 9 não é reverso e reverso de 10 inicia por zero
   para numero <- 11 ate limiteSoma faca

      //Chamar função que calcula reverso do numero
      numeroReverso <- ObterReverso(numero)

      //Guardar a soma de n e reverso(n)
      soma <- numero + numeroReverso

      //Busca comprimento de n e reverso(n) para comparação. Evitar que numero ou reverso tenha zeros à esquerda
      compNumero <- compr(Numpcarac(numero))
      compReverso <- compr(Numpcarac(numeroReverso))

      //Verifica se é impar
      //Compara o comprimento pois inverso ou n com zeros a esquerda não é válido
      //Verifica se a soma de n e reverso(n) está dentro do limite
      se (((soma) % 2) <> 0) e (compNumero = compReverso) e (soma <= limiteSoma) entao

         //Imprime N, reverso(n) e a soma.
         escreval("Número (n):",numero, " Reverso:", numeroReverso, " Soma de n e Reverso(n)", soma)
      fimse
   fimpara
fimalgoritmo