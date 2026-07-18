FUNCTION MAIN()

    LOCAL cValorUm := ""
    LOCAL cValorDois := ""

    LOCAL nValorUm := 0    
    LOCAL nValorDois := 0

    ACCEPT "Informe o 1º valor: " To cValorUm
    nValorUm := Val(cValorUm)
    
    ACCEPT "Informe o 2º valor: " To cValorDois
    nValorDois := Val(cValorDois)


    if nValorUm == nValorDois
        QOut("Os valores são iguais")
    
    elseif nValorUm > nValorDois
        QOut(Str(nValorUm) + " é maior que " + Str(nValorDois))
        
    else
        QOut(Str(nValorUm) + " é menor que " + Str(nValorDois))
    ENDIF
    

RETURN NIL