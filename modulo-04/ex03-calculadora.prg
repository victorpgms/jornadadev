FUNCTION Main()

    LOCAL cValorA := ""
    LOCAL cValorB := ""
    LOCAL cOperacao := ""

    LOCAL nValorA := 0
    LOCAL nValorB := 0
    LOCAL nResultado := 0

    ACCEPT "Digite o primeiro valor: " TO cValorA
    nValorA := Val(cValorA)

    ACCEPT "Digite a operação (+, -, *, /, ^, R): " TO cOperacao

    IF Upper(cOperacao) != "R"
        ACCEPT "Digite o segundo valor: " TO cValorB
        nValorB := Val(cValorB)
    ENDIF

    DO CASE

        CASE cOperacao == "+"
            nResultado := nValorA + nValorB
            QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))

        CASE cOperacao == "-"
            nResultado := nValorA - nValorB
            QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))

        CASE cOperacao == "*"
            nResultado := nValorA * nValorB
            QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))

        CASE cOperacao == "/"

            IF nValorB == 0
                QOut("Erro: não é possível dividir por zero.")
            ELSE
                nResultado := nValorA / nValorB
                QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))
            ENDIF

        CASE cOperacao == "^"
            nResultado := nValorA ^ nValorB
            QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))

        CASE Upper(cOperacao) == "R"

            IF nValorA < 0
                QOut("Erro: não é possível calcular a raiz de um número negativo.")
            ELSE
                nResultado := Sqrt(nValorA)
                QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))
            ENDIF

        OTHERWISE
            QOut("Operação inválida.")

    ENDCASE

RETURN NIL