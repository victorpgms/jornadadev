FUNCTION Main()

    LOCAL cInputMes := ""
    LOCAL nDia := 0
    LOCAL cNomeMes := ""
    LOCAL aDias := {"Domingo", "Segunda Feira", "Terca Feira", "Quarta Feira", "Quinta Feira", ;
         "Sexta Feira", "Sabado"}
    
    ACCEPT "Digite o numero do dia da Semana (1 a 7): " TO cInputMes

    nDia := Val(cInputMes)

    IF nDia >= 1 .AND. nDia <= Len(aDias)
        QOut("Dia selecionado: ", aDias[nDia])
    ELSE
        QOut("Dia invalido")
    ENDIF

RETURN NIL
