FUNCTION Main()

    LOCAL cTextoCompleto := "Harbour"
    LOCAL cTextoParcial  := "Harb"

    QOut(cTextoCompleto = cTextoParcial)
    QOut(cTextoCompleto == cTextoParcial)

RETURN NIL