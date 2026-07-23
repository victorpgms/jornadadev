FUNCTION Main()
   LOCAL aAlunos       := {}
   LOCAL nTotalAlunos  := 0
   LOCAL cInput        := ""
   LOCAL nI            := 0
   LOCAL cNome         := ""
   LOCAL nN1           := 0, nN2 := 0, nN3 := 0, nN4 := 0
   LOCAL nMedia        := 0
   LOCAL aLinha        := {}

   QOut("==========================================")
   QOut("           SISTEMA DE NOTAS  ")
   QOut("==========================================")
   QOut("")

   DO WHILE .T.
      ACCEPT "Quantos alunos deseja cadastrar? " TO cInput
      cInput := AllTrim(cInput)

      IF Len(cInput) > 0 .AND. EInteiroPositivo(cInput)
         nTotalAlunos := Val(cInput)
         IF nTotalAlunos > 0
            EXIT
         ENDIF
      ENDIF

      QOut("Erro: Digite um numero inteiro maior que zero.")
      QOut("")
   ENDDO

   // 2. Leitura dos dados de cada aluno
   FOR nI := 1 TO nTotalAlunos
      CLS
      QOut("--- Cadastro do Aluno " + AllTrim(Str(nI)) + " de " + AllTrim(Str(nTotalAlunos)) + " ---")
      QOut("")

      // Nome do Aluno
      DO WHILE .T.
         ACCEPT "Nome do Aluno: " TO cNome
         cNome := AllTrim(cNome)
         IF Len(cNome) > 0
            EXIT
         ELSE
            QOut("Erro: O nome nao pode ficar em branco.")
         ENDIF
      ENDDO

      // Leitura das 4 notas via função auxiliar
      nN1 := LerNotaValidada("Digite a Nota 1 (0 a 10): ")
      nN2 := LerNotaValidada("Digite a Nota 2 (0 a 10): ")
      nN3 := LerNotaValidada("Digite a Nota 3 (0 a 10): ")
      nN4 := LerNotaValidada("Digite a Nota 4 (0 a 10): ")

      // Insere o array unidimensional dentro da matriz principal
      AAdd(aAlunos, { cNome, nN1, nN2, nN3, nN4 })
   NEXT

   // 3. Exibição dos Relatórios
   CLS
   QOut("==================================================")
   QOut("             RELATORIO DE RENDIMENTO              ")
   QOut("==================================================")
   QOut("")

   // RELATÓRIO 1: APROVADOS (Média >= 7.0)
   QOut("--- ALUNOS APROVADOS (Media >= 7.0) ---")
   FOR nI := 1 TO Len(aAlunos)
      aLinha := aAlunos[nI] // Extrai o subarray {nome, n1, n2, n3, n4}
      
      // Média calculada acessando as posições numéricas do subarray
      nMedia := (aLinha[2] + aLinha[3] + aLinha[4] + aLinha[5]) / 4

      IF nMedia >= 7.0
         QOut("Aluno: " + PadR(aLinha[1], 25) + " | Media: " + AllTrim(Transform(nMedia, "99.9")))
      ENDIF
   NEXT

   QOut("")

   // RELATÓRIO 2: REPROVADOS (Média < 7.0)
   QOut("--- ALUNOS REPROVADOS (Media < 7.0) ---")
   FOR nI := 1 TO Len(aAlunos)
      aLinha := aAlunos[nI]
      nMedia := (aLinha[2] + aLinha[3] + aLinha[4] + aLinha[5]) / 4

      IF nMedia < 7.0
         QOut("Aluno: " + PadR(aLinha[1], 25) + " | Media: " + AllTrim(Transform(nMedia, "99.9")))
      ENDIF
   NEXT

   QOut("")
   QOut("==================================================")
   QOut("")
   WAIT
RETURN NIL

// --- FUNÇÕES AUXILIARES DE SUPORTE ---

// Lê e garante uma nota no intervalo [0, 10]
FUNCTION LerNotaValidada(cMensagem)
   LOCAL cInput := ""
   LOCAL nNota := 0

   DO WHILE .T.
      ACCEPT cMensagem TO cInput
      cInput := AllTrim(cInput)

      IF Len(cInput) > 0
         nNota := Val(cInput)
         IF nNota >= 0 .AND. nNota <= 10
            RETURN nNota
         ENDIF
      ENDIF

      QOut("Erro: Nota invalida. Digite um valor entre 0 e 10.")
   ENDDO
RETURN 0

// Valida se a string contém apenas dígitos
FUNCTION EInteiroPositivo(cTexto)
   LOCAL nI := 0
   LOCAL cChar := ""

   FOR nI := 1 TO Len(cTexto)
      cChar := SubStr(cTexto, nI, 1)
      IF !(cChar >= "0" .AND. cChar <= "9")
         RETURN .F.
      ENDIF
   NEXT
RETURN .T.