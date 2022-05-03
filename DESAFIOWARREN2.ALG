algoritmo "DesafioWarren2"
var

   quantidadeAlunos,contador,chegada, atrasados, limiteAlunos:inteiro

inicio

   //Pedindo quantidade de alunos presentes e limite de atrasados
   escreval("Quantos alunos estão presentes?")
   leia(quantidadeAlunos)
   escreval("Qual limite de alunos atrasados?")
   leia(limiteAlunos)

   //Perguntar tempos de chegada dos alunos
   para contador <- 1 ate quantidadeAlunos faca

      escreval ("Qual tempo de chegada do aluno",contador, "?")
      leia(chegada)

      //Verifica se está atrasado
      se chegada >0 entao
         atrasados <- atrasados+1
      fimse
   fimpara

   // Confere se a aula será cancelada ou não
   se atrasados > limiteAlunos entao
      escreval ("Aula Cancelada")
   senao
      escreval("Aula Normal")
   fimse


fimalgoritmo