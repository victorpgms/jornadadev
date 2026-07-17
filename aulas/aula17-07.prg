FUNCTION MAIN()

    whileVdd()

    linha()


RETURN NIL

FUNCTION whileVdd()

    LOCAL cInput
    LOCAL nNota

    WHILE .T.

        ACCEPT "Nota (0 a 10): " TO cInput
        nNota := Val(cInput)

        IF nNota >= 0 .AND. nNota <= 10
            EXIT
        ENDIF

        QOut("Nota inválida! Tente de novo.")

    ENDDO

return NIL


FUNCTION ForStep()

    LOCAL nI
    LOCAL nBusca := 50

FOR nI := 1 TO 100
    IF nI == nBusca
        EXIT        // achei - abandona o laço
    ENDIF
NEXT


FOR nI := 1 TO 20
    IF Mod(nI, 2) == 0
        LOOP        // par? pula pra próxima volta
    ENDIF

    QOut(Str(nI))   // só ímpares chegam aqui
NEXT


RETURN NIL

FUNCTION tabuada()
    
    LOCAL nNum
    LOCAL nI

    ACCEPT "Tabuada de qual numero? " TO nNum
    nNum := Val(nNum)

    FOR nI := 1 TO 10
        QOut(AllTrim(Str(nNum)) + " x " + AllTrim(Str(nI)) + " = " + AllTrim(Str(nNum * nI)))
    NEXT

RETURN NIL

FUNCTION tabuada()
    
    LOCAL nNum
    LOCAL nI
    LOCAL nj

    ACCEPT "Tabuada de qual numero? " TO nNum
    nNum := Val(nNum)

    FOR nj := 1 TO 10
    FOR nI := 1 TO 10
        QOut(AllTrim(Str(nNum)) + " x " + AllTrim(Str(nI)) + " = " + AllTrim(Str(nNum * nI)))
    NEXT
next

RETURN NIL

FUNCTION somar()
    LOCAL nTotal := 0
    LOCAL nI :=1, nNum, nQtd

    ACCEPT "Quantos Numeros? " TO nQtd
    nQtd := Val(nQtd)

    WHILE nI <= nQtd
        ACCEPT "Número: " TO nNum
        nTotal += Val(nNum)
        nI++
    ENDDO   
    QOut("Soma: " + allTrim(Str(nTotal)))
RETURN NIL

FUNCTION preTeste()
    
    LOCAL nCont := 1
    
    WHILE nCont <= 5
        QOut("Contagem: " + Alltrim(Str(nCont)))
        nCont++
    ENDDO
    
RETURN NIL


FUNCTION forTeste()
    
    FOR i := 1 TO 100
        QOut(i)
    ENDFOR
    
RETURN NIL


FUNCTION linha()
    QOut(" ")
    QOut("----------------------------")
    QOut(" ")
RETURN NIL