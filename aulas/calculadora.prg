FUNCTION main()

    
    LOCAL nA
    LOCAL nB
    
    QOut ("~~~ Calculadora ~~~")

    ACCEPT "Digite o 1ß valor: " TO nA
    nA := Val(nA)
    
    ACCEPT "Digite o 2ß valor: " TO nB
    nB := Val(nB)


    QOut("Soma = " + AllTrim(Str(nA + nB)))
    QOut("Subtraá∆o = " + AllTrim(Str(nA - nB)))
    QOut("Multiplicaá∆o = " + AllTrim(Str(nA * nB)))
    IF nB <> 0
        QOut("Divis∆o = " + AllTrim(Str(nA / nB)))
    else 
        QOut("N∆o Ç poss°vel dividir por 0")
    ENDIF


RETURN NIL