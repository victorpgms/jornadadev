FUNCTION Main()

    
    LOCAL   cNome := "Victor Pedro" 
    LOCAL   cCidade := "SÆo Paulo" 
    LOCAL   cCurso := "Harbour/ADVPL" 
    
    hb_cdpSelect("PT850")

    QOut("=========================")
    QOut("  FICHA DE APRESENTA€ÇO  ")
    QOut("=========================")
    QOut("Nome: " + cNome)
    QOut("Nome: " + cCidade)
    QOut("Nome: " + cCurso)
    QOut("=========================")
RETURN NIL

