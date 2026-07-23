FUNCTION Main()

    LOCAL cOpcao := ""
    LOCAL nNum1 := 0
    LOCAL nNum2 := 0
    LOCAL xResultado


    cOpcao := MenuSelecao()

    IF !( cOpcao >= "1" .AND. cOpcao <= "6" )
        QOut("Opcao invalida!")

        RETURN NIL
    ENDIF

    nNum1 := LerNumero("Digite o primeiro numero: ")

    IF cOpcao != "5"
        nNum2 := LerNumero("Digite o segundo numero: ")
    ENDIF

    xResultado := Calcular(cOpcao, nNum1, nNum2)
    MostrarResultado(cOpcao, nNum1, xResultado)

RETURN NIL


FUNCTION LerNumero(cMensagem)
    LOCAL cValor := ""
    ACCEPT cMensagem TO cValor
RETURN Val(cValor)


FUNCTION Calcular(cOpcao, n1, n2)
    DO CASE
        CASE cOpcao == "1"
            RETURN Somar(n1, n2)

        CASE cOpcao == "2"
            RETURN Subtrair(n1, n2)

        CASE cOpcao == "3"
            RETURN Dividir(n1, n2)

        CASE cOpcao == "4"
            RETURN Multiplicar(n1, n2)

        CASE cOpcao == "5"
            RETURN Sqrt(n1)

        CASE cOpcao == "6"
            RETURN Potencia(n1, n2)
    ENDCASE
RETURN .F.


FUNCTION MostrarResultado(cOpcao, nNum1, xResultado)
    QOut("")
    IF ValType(xResultado) == "L" .AND. !xResultado
        QOut("Erro: divisao por zero.")
        RETURN NIL
    ENDIF
    DO CASE
        CASE cOpcao == "1"
            QOut("Resultado da Soma: " + AllTrim(Str(xResultado)))

        CASE cOpcao == "2"
            QOut("Resultado da Subtracao: " + AllTrim(Str(xResultado)))

        CASE cOpcao == "3"
            QOut("Resultado da Divisao: " + AllTrim(Str(xResultado)))

        CASE cOpcao == "4"
            QOut("Resultado da Multiplicacao: " + AllTrim(Str(xResultado)))

        CASE cOpcao == "5"
            QOut("Raiz Quadrada de " + ;
                 AllTrim(Str(nNum1)) + ": " + ;
                 AllTrim(Str(xResultado)))
        CASE cOpcao == "6"
            QOut("Resultado da Potencia: " + AllTrim(Str(xResultado)))
    ENDCASE

RETURN NIL


FUNCTION Somar(n1, n2)
RETURN n1 + n2


FUNCTION Subtrair(n1, n2)
RETURN n1 - n2


FUNCTION Multiplicar(n1, n2)
RETURN n1 * n2

FUNCTION Dividir(n1, n2)

    IF n2 == 0
        RETURN .F.
    ENDIF

RETURN n1 / n2


FUNCTION Potencia(n1, n2)
RETURN n1 ^ n2


FUNCTION MenuSelecao()

   LOCAL cSelecao := ""

   QOut("==============================")
   QOut("         CALCULADORA          ")
   QOut("==============================")
   QOut("1 - SOMAR                     ")
   QOut("2 - SUBTRAIR                  ")
   QOut("3 - DIVIDIR                   ")
   QOut("4 - MULTIPLICAR               ")
   QOut("5 - RAIZ QUADRADA             ")
   QOut("6 - POTENCIA                  ")
   QOut("==============================")

   ACCEPT "Selecione o calculo: " TO cSelecao

RETURN cSelecao
