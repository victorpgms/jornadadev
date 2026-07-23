FUNCTION Main()
    LOCAL aNumeros  := {}
    LOCAL cInput    := ""
    LOCAL nVal      := 0
    LOCAL nI        := 0
    LOCAL nSoma     := 0
    LOCAL nMedia    := 0


    QOut("==========================================")
    QOut("      LEITURA E ESTATISTICA DE ARRAY      ")
    QOut("==========================================")
    QOut("")

    FOR nI := 1 TO 10
        ACCEPT "Digite o " + AllTrim(Str(nI)) + "o numero: " TO cInput
        cInput := AllTrim(cInput)
        nVal := Val(cInput)
        AAdd(aNumeros, nVal)
    NEXT


    FOR nI := 1 TO Len(aNumeros)
        nSoma += aNumeros[nI]
    NEXT

    nMedia := nSoma / Len(aNumeros)

    ASort(aNumeros)

    QOut("==========================================")
    QOut("                RESULTADOS                ")
    QOut("==========================================")

  
    QOut("Numeros em ordem crescente: ")
    FOR nI := 1 TO Len(aNumeros)
        QQOut(AllTrim(Str(aNumeros[nI])) + " ")
    NEXT
    QOut("")

    QOut("------------------------------------------")
    QOut("Soma Total:    " + AllTrim(Str(nSoma)))
    QOut("Media:         " + AllTrim(Transform(nMedia, "999,999.99")))
    QOut("Menor Valor:   " + AllTrim(Str(aNumeros[1])))
    QOut("Maior Valor:   " + AllTrim(Str(aNumeros[Len(aNumeros)])))
    QOut("==========================================")
    QOut("")
    WAIT
RETURN NIL