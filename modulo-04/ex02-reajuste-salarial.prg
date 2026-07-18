FUNCTION MAIN()

    LOCAL cSalario := ""

    LOCAL nSalario := 0    
    LOCAL nReajuste := 0

    ACCEPT "Informe o valor do salário: " To cSalario
    nSalario := Val(cSalario)


    if nSalario < 1000
        nReajuste := 1.15
        
    elseif nSalario < 2000
        nReajuste := 1.12
        
    elseif nSalario < 3000
        nReajuste := 1.08
        
    else
        nReajuste := 1.05
    ENDIF
    
    QOut("Valor do salário reajustado: R$ " + AllTrim(Str(nSalario * nReajuste)))

RETURN NIL