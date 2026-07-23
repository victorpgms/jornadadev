FUNCTION Main()
   LOCAL cOpcao := ""
   LOCAL cJogadaUser := ""
   LOCAL cJogadaCPU := ""
   LOCAL cResultado := ""
   LOCAL nVitoriasUser := 0
   LOCAL nVitoriasCPU := 0
   LOCAL nEmpates := 0

   CLS
   QOut("==========================================")
   QOut("                  JOKENPO                 ")
   QOut("==========================================")

   // Loop partidas
   DO WHILE .T.
      QOut("")
      QOut("Escolha sua jogada:")
      QOut("1 - Pedra")
      QOut("2 - Papel")
      QOut("3 - Tesoura")
      QOut("0 - Sair do Jogo")
      QOut("")

      ACCEPT "Sua opcao: " TO cOpcao
      cOpcao := AllTrim(cOpcao)

      // Condicao
      IF cOpcao == "0"
         QOut("")
         QOut("Encerrando o jogo...")
         EXIT
      ENDIF


      IF !ValidarJogada(cOpcao)
         QOut("Erro: Jogada invalida! Digite 1 (Pedra), 2 (Papel), 3 (Tesoura) ou 0 (Sair).")
         LOOP // Volta ao inicio do loop 
      ENDIF

      cJogadaUser := cOpcao

      // Sorteio computador
      cJogadaCPU := SortearJogadaCPU()

      // Exibicao das escolhas
      QOut("")
      QOut("------------------------------------------")
      QOut("Voce escolheu:       " + NomeJogada(cJogadaUser))
      QOut("Computador escolheu: " + NomeJogada(cJogadaCPU))
      QOut("------------------------------------------")

      // 3. Processamento do vencedor
      cResultado := DefinirVencedor(cJogadaUser, cJogadaCPU)

      DO CASE
         CASE cResultado == "EMPATE"
            QOut(" EMPATE! ")
            nEmpates++
         CASE cResultado == "JOGADOR"
            QOut("PARABENS! Voce venceu!")
            nVitoriasUser++
         CASE cResultado == "CPU"
            QOut(" O COMPUTADOR venceu! ")
            nVitoriasCPU++
      ENDCASE

      // Placar parcial
      QOut("")
      QOut("PLACAR: Voce " + AllTrim(Str(nVitoriasUser)) + " x " + AllTrim(Str(nVitoriasCPU)) + " CPU (Empates: " + AllTrim(Str(nEmpates)) + ")")
      QOut("==========================================")
   ENDDO

   // Placar final exibido ao encerrar
   CLS
   QOut("==========================================")
   QOut("              PLACAR FINAL                ")
   QOut("==========================================")
   QOut("Vitorias do Jogador:    " + AllTrim(Str(nVitoriasUser)))
   QOut("Vitorias do Computador: " + AllTrim(Str(nVitoriasCPU)))
   QOut("Empates:                " + AllTrim(Str(nEmpates)))
   QOut("==========================================")
   QOut("")
   WAIT
RETURN NIL

//Sorteio da CPU
FUNCTION SortearJogadaCPU()
   LOCAL nSorteio := hb_RandomInt(1, 3)
RETURN AllTrim(Str(nSorteio))

// Validação da Jogada
FUNCTION ValidarJogada(cJogada)
   // Retorna .T. somente se for "1", "2" ou "3"
RETURN ( cJogada == "1" .OR. cJogada == "2" .OR. cJogada == "3" )

FUNCTION DefinirVencedor(cJogada1, cJogada2)

   IF cJogada1 == cJogada2
      RETURN "EMPATE"
   ENDIF

   IF (cJogada1 == "1" .AND. cJogada2 == "3") .OR. ;
      (cJogada1 == "2" .AND. cJogada2 == "1") .OR. ;
      (cJogada1 == "3" .AND. cJogada2 == "2")
      RETURN "JOGADOR"
   ENDIF

RETURN "CPU"

// Código para Texto 
FUNCTION NomeJogada(cCodigo)
   LOCAL cNome := ""
   DO CASE
      CASE cCodigo == "1" ; cNome := "PEDRA"
      CASE cCodigo == "2" ; cNome := "PAPEL"
      CASE cCodigo == "3" ; cNome := "TESOURA"
   ENDCASE
RETURN cNome