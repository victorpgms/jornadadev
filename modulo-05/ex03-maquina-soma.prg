FUNCTION MAIN()

    Somar()


RETURN NIL

FUNCTION Somar()

    LOCAL nTotal := 0
    LOCAL nQtd := 0

    LOCAL cResposta := ""
    LOCAL nResposta := 0

    WHILE .T.

    
    ACCEPT "Digite um valor a ser somado ou 0 para sair: " TO cResposta
    nResposta := Val(cResposta) //converte para number
        IF nResposta == 0
            EXIT
        ENDIF
    nTotal += nResposta
    nQtd ++
    ENDDO

    QOut("Numeros totais: " + Alltrim(Str(nQtd)))
    QOut("Soma toal: " + Alltrim(Str(nTotal)))

RETURN NIL