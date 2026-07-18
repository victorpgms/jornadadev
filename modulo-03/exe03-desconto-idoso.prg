FUNCTION Main()

    LOCAL cNomeCliente := ""
    LOCAL dDataAtual := Date()
    LOCAL cDataNasc := ""
    LOCAL dDataNasc := Date() // MM/DD/YY
    LOCAL cPrecoProd := ""
    LOCAL nPrecoProd := 0
    LOCAL nDescontoIdade60 := 0
    LOCAL nIdade := 0

    SET DATE FORMAT TO "DD/MM/YYYY" 
    SET CENTURY ON

    ACCEPT "Digite o nome do cliente: " TO cNomeCliente
    ACCEPT "Digite a data de nascimento (DD/MM/AAAA): " TO cDataNasc
    dDataNasc := CToD(cDataNasc) //Converte para date
    ACCEPT "Digite o valor do produto: " TO cPrecoProd
    nPrecoProd := Val(cPrecoProd) //converte para number


    // Calcula inicialmente a diferença entre os anos
    nIdade := Year(dDataAtual) - Year(dDataNasc)
    
    // Calcular diferença entre meses e anos
    IF Month(dDataAtual) < Month(dDataNasc)
    nIdade--
    ELSEIF Month(dDataAtual) == Month(dDataNasc)
        IF Day(dDataAtual) < Day(dDataNasc)
        nIdade--
        ENDIF
    ENDIF

    //Desconto caso nIdade >= 60
    IF nIdade >= 60
        nDescontoIdade60 := nPrecoProd * 0.125
    ENDIF

    QOut("")
    QOut("------------------")
    QOut("")

    QOut("Nome: " + AllTrim(cNomeCliente))
    QOut("Idade: " + AllTrim(Str(nIdade)))
    QOut("Valor produto: " + AllTrim(Str(nPrecoProd)))
    QOut("Desconto: " + AllTrim(Str(nDescontoIdade60)))
    QOut("Total: " + AllTrim(Str(nPrecoProd - nDescontoIdade60)))

    QOut("")
    QOut("------------------")
    QOut("")


RETURN NIL