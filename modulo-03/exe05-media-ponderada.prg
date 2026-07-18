FUNCTION Main()

    LOCAL cNota1 := ""
    LOCAL cNota2 := ""
    LOCAL cNota3 := ""
    LOCAL cNota4 := ""

    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0

    LOCAL nMedia := 0

    ACCEPT "Digite a nota do 1º bimestre: " TO cNota1
    nNota1 := Val(cNota1)

    ACCEPT "Digite a nota do 2º bimestre: " TO cNota2
    nNota2 := Val(cNota2)

    ACCEPT "Digite a nota do 3º bimestre: " TO cNota3
    nNota3 := Val(cNota3)

    ACCEPT "Digite a nota do 4º bimestre: " TO cNota4
    nNota4 := Val(cNota4)

    nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / 10

    QOut("Média ponderada: " + AllTrim(Str(nMedia, 10, 2)))

RETURN NIL