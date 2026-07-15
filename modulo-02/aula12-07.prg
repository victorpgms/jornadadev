

FUNCTION Main()
    
    hb_cdpSelect("UTF8")
    
    Soma(10, 7)

    ValorTotal (100, 10)

    Descontao()
    
RETURN NIL


FUNCTION Soma(nNum1, nNum2)
    LOCAL nResult := nNum1 + nNum2
    QOut( Str(nResult))
RETURN NIL

FUNCTION ValorTotal(nValor, nDesconto)
    LOCAL nResult := nValor - nDesconto
    QOut ( Str(nResult))
RETURN NIL

FUNCTION Descontao()

    LOCAL nValor := 250
    LOCAL nDesconto := 12
    LOCAL nTotal

    IF nValor > 100

        nDesconto := nValor * 0.10

    ENDIF

    QOut("O valor final ‚ de: " + Str(nDesconto))

RETURN NIL


