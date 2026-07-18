FUNCTION MAIN()

    LOCAL cIdade := ""
    LOCAL cDependente := ""

    LOCAL nIdade := 0  
    LOCAL nDependente := 0

    LOCAL nAdicionalValor := 90

    LOCAL nValorPlano := 0

    ACCEPT "Informe a idade: " To cIdade
    nIdade := Val(cIdade)
    ACCEPT "Informe a quantidade de dependentes: " To cDependente
    nDependente := Val(cDependente)


    if nIdade <= 20
        nValorPlano := 180
        
    elseif nIdade <= 40
        nValorPlano := 260
        
    elseif nIdade <= 60
        nValorPlano := 380
        
    else
        nValorPlano := 520
    ENDIF
    
    QOut("Valor do plano é R$ " + AllTrim(Str(nValorPlano)))
    QOut("Valor total de dependentes é R$ " + AllTrim(Str(nDependente * nAdicionalValor)))
    QOut("Valor total do plano R$ " + AllTrim(Str(nValorPlano + (nDependente * nAdicionalValor))))

RETURN NIL