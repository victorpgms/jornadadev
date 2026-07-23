FUNCTION Main()

    LOCAL nX := 5

    nX := Dobrar(nX)      // 5 -> 10 (preciso reatribuir o retorno)
    DobrarRef(@nX)        // 10 -> 20 (o @ altera a variável original)

    ? nX                  // 20

RETURN NIL


FUNCTION Dobrar(nValor)   // por VALOR (padrão)

    nValor *= 2

RETURN nValor


FUNCTION DobrarRef(nValor) // por REFERÊNCIA

    nValor *= 2
    

RETURN NIL