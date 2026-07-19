FUNCTION MAIN()

    funcaoA()


RETURN NIL

FUNCTION funcaoA()

    LOCAL cValorA := ""
    LOCAL nValorA := 1

    WHILE nValorA > 0

    ACCEPT "Digite o valor do produto: " TO cValorA
    nValorA := Val(cValorA) //converte para number

    QOut("Valor digitado = " + Alltrim(Str(nValorA)) + " e o dobro é igual a = " + Alltrim(Str(nValorA * 2)))
    QOut("")
    QOut("Para sair, digite valor <= 0")
    QOut("")

    ENDDO


RETURN NIL