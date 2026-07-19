FUNCTION MAIN()

    funcaoA()
    funcaoB()
    funcaoC()

RETURN NIL


FUNCTION funcaoA()
    LOCAL nAtual := 0
    LOCAL nInicial := 1
    LOCAL nFinal := 100

    FOR nAtual := nInicial TO nFinal
        OutStd(AllTrim(Str(nAtual)) + hb_eol())
    ENDFOR
    linha()
RETURN NIL

FUNCTION funcaoB()
    LOCAL nAtual := 0
    LOCAL nInicial := -50
    LOCAL nFinal := 50

    FOR nAtual := nInicial TO nFinal
        OutStd(AllTrim(Str(nAtual)) + hb_eol())
    ENDFOR
    linha()
RETURN NIL

FUNCTION funcaoC()
    LOCAL nAtual := 0
    LOCAL nInicial := 80
    LOCAL nFinal := 5

    FOR nAtual := nInicial TO nFinal STEP -1
        OutStd(AllTrim(Str(nAtual)) + hb_eol())
    ENDFOR
    linha()
RETURN NIL

FUNCTION linha()
    QOut(" ")
    QOut("----------------------------")
    QOut(" ")
RETURN NIL