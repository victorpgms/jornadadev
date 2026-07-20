FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cDisciplina := ""

    LOCAL cNota1 := ""
    LOCAL cNota2 := ""

    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    LOCAL cResposta := ""

    WHILE .T.

// Validação do nome
    WHILE .T.

        ACCEPT "Digite o nome do aluno: " TO cNome

        IF Len(Trim(cNome)) > 0
            EXIT
        ENDIF

        QOut("Nome inválido! O nome não pode estar vazio.")

    ENDDO


    // Validação da disciplina
    WHILE .T.

        ACCEPT "Digite a disciplina com 3 letras maiúsculas: " TO cDisciplina

        IF Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina)
            EXIT
        ENDIF

        QOut("Disciplina inválida! Use exatamente 3 letras maiúsculas.")

    ENDDO


    // Validação da primeira nota
    WHILE .T.

        ACCEPT "Digite a primeira nota (0 a 10): " TO cNota1
        nNota1 := Val(cNota1)

        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF

        QOut("Nota inválida! Digite um valor entre 0 e 10.")

    ENDDO


    // Validação da segunda nota
    WHILE .T.

        ACCEPT "Digite a segunda nota (0 a 10): " TO cNota2
        nNota2 := Val(cNota2)

        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF

        QOut("Nota inválida! Digite um valor entre 0 e 10.")

    ENDDO


    nMedia := (nNota1 + nNota2) / 2

    QOut("")
    QOut("Nome: " + Trim(cNome))
    QOut("Disciplina: " + cDisciplina)
    QOut("Nota 1: " + AllTrim(Str(nNota1, 10, 2)))
    QOut("Nota 2: " + AllTrim(Str(nNota2, 10, 2)))
    QOut("Média: " + AllTrim(Str(nMedia, 10, 2)))
    QOut("")


        // Pergunta se deseja cadastrar outro aluno
        ACCEPT "Deseja calcular outro aluno? (S/N): " TO cResposta
        cResposta := Upper(Trim(cResposta))

        IF cResposta != "S"
            EXIT
        ENDIF

        QOut("")
        QOut("----------------------------")
        QOut("")

    ENDDO

    QOut("Programa encerrado.")

RETURN NIL