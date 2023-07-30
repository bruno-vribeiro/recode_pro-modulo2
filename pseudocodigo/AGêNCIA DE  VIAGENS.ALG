Algoritmo "Menu de cadastro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

// Atividade Prática do Módulo 2 - Recode Pro
// Projeto: Uma agência de viagens


// função cadastrar novos clientes
procedimento cadastrarCliente()

var
   texto:caractere

inicio
   // Iniciando a variavél booleana e texto alternativo
   opcaoContinua<- verdadeiro
   texto<- ""

   //Cadastrar quantas vezes desejar
   enquanto opcaoContinua = verdadeiro faca
      escreval(texto+"Cadastre seu cliente")
      escreval()
      escreva("NOME:  ")
      leia(nome)
      escreva("CPF:  ")
      leia(cpf)
      escreva("EMAIL:  ")
      leia(email)
      escreva("CONTATO:  ")
      leia(contato)

      // Reatribuindo a variavél de interação com o vetor
      i<-1

      //Procurando indice vazio no vetor
      enquanto clientes[i] <> "" faca
         i<-i+1
      fimenquanto

      // Cadastrando o cliente no vetor
      clientes[i]<-"Cliente "+numpcarac(i)+": "+nome+", "+cpf+", "+email+", "+contato
      escreval()
      escreval()
      escreval("Cliente cadastrado com sucesso!!")
      escreval()

      // Verificando a repetição do processo de cadastramento
      escreval("Deseja realizar outra operacão?")
      escreval("1- SIM e 0- NÃO")
      leia(i)
      se i = 1 entao
         opcaoContinua <- verdadeiro
         texto<-"Novamente "
      senao
         se i = 0 entao
            opcaoContinua <- falso
         fimse
      fimse
      limpatela
   fimenquanto
   limpatela

fimprocedimento

// Função de cadastrar novo destino
procedimento cadastrarDestino()

var
   texto:caractere

inicio

   // Iniciando a variavél booleana e texto alternativo
   opcaoContinua <- verdadeiro
   texto<- ""

   //Cadastrar quantas vezes desejar
   enquanto opcaoContinua = verdadeiro faca
      escreval(texto+"Cadastre um novo Destino")
      escreval()
      escreva("PAÍS:  ")
      leia(pais)
      escreva("ESTADO:  ")
      leia(estado)
      escreva("CIDADE:  ")
      leia(cidade)
      escreva("LOCAL:  ")
      leia(local)

      // Reatribuindo a variavél de interação com o vetor
      i<-1

      //Procurando indice vazio no vetor
      enquanto destinos[i] <> "" faca
         i<-i+1
      fimenquanto

      // Cadastrando o destino no vetor
      destinos[i]<-"Destino "+numpcarac(i)+": "+pais+" , "+estado+", "+cidade+", "+local
      escreval()
      escreval()

      // Verificando a repetição do processo de cadastramento
      escreval("Destino cadastrado com sucesso!!")
      escreval()
      escreval("Deseja realizar outra operacão?")
      escreval("1- SIM e 0- NÃO")
      leia(i)
      se i = 1 entao
         opcaoContinua <- verdadeiro
         texto<- "Novamente "
      senao
         se i = 0 entao
            opcaoContinua <- falso
         senao
            escreval("numero inválido")
         fimse
      fimse
      limpatela
   fimenquanto
fimprocedimento

// Função de consulta de clientes e destinos cadastrado
procedimento consultas()

inicio
   //Iniciando a variavél booleana
   opcaoContinua <- verdadeiro

   // Realizar quantas consultas desejar
   enquanto opcaoContinua = verdadeiro faca
      escreval("O que você deseja consultar?")
      escreval()
      escreval("1- Clientes")
      escreval("2- Destinos")
      leia(opcaoConsulta)
      limpatela

      // Direcionando a consulta
      se opcaoConsulta = 1 entao

         para i de 1 ate 10 faca
            se clientes[i] <> "" entao
               escreval(clientes[i])
            fimse
         fimpara
         escreval()
      senao
         se opcaoConsulta = 2 entao
            para i de 1 ate 10 faca
               se destinos[i] <> "" entao
                  escreval(destinos[i])
               fimse
            fimpara
            escreval()
         fimse
      fimse
      escreval()

      // Verificando o continuidade das consultas
      escreval("Deseja realizar outra operacão?")
      escreval("1- SIM e 0- NÃO")
      leia(i)
      se i = 1 entao
         opcaoContinua <- verdadeiro
      senao
         se i = 0 entao
            opcaoContinua <- falso
         fimse
      fimse
      limpatela
   fimenquanto
fimprocedimento

Var
   // Seção de Declarações das variáveis
   opcaoContinua:logico
   opcaoMenu,opcaoConsulta,i:inteiro
   nome,cpf,email,contato,pais,estado,cidade,local:caractere
   clientes,destinos:vetor [1..10] de caractere

Inicio

   // Iniciando o Programa com o menu
   repita
      escreval("O que deseja fazer?")
      escreval("Digite à opção numérica:")
      escreval()
      escreval("1- Cadastrar Cliente")
      escreval("2- Cadastrar Destino")
      escreval("3- Consultar")
      escreval("0- Finalizar o programa")
      leia(opcaoMenu)
      limpatela

      // Escolhendo a opcão do menu
      Escolha (opcaoMenu)
      caso 1
         cadastrarCliente()
      caso 2
         cadastrarDestino()
      caso 3
         consultas()
      caso 0
         escreval ("Muito Obrigado!!")
      outrocaso
         escreval("** Número inválido digite a opção numérica válida abaixo! **")
         escreval()
      fimescolha

   ate opcaoMenu = 0

Fimalgoritmo

