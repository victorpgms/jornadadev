FUNCTION Main()

    LOCAL nNumeroSorteado := HB_RandomInt(1, 100)
    LOCAL cPalpite := ""
    LOCAL nPalpite := 0
    LOCAL nTentativa := 0
    LOCAL lAcertou := .F.

    QOut("Jogo: Adivinhe o número")
    QOut("Você tem 7 tentativas.")
    QOut("")

    FOR nTentativa := 1 TO 7

        ACCEPT "Digite um número entre 1 e 100: " TO cPalpite
        nPalpite := Val(cPalpite)

        IF nPalpite == nNumeroSorteado

            QOut("Parabéns! Você acertou.")
            QOut("Número de tentativas: " + AllTrim(Str(nTentativa)))

            lAcertou := .T.
            EXIT

        ELSEIF nPalpite < nNumeroSorteado

            QOut("O número sorteado é maior.")

        ELSE

            QOut("O número sorteado é menor.")

        ENDIF

        QOut("Tentativas restantes: " + AllTrim(Str(7 - nTentativa)))
        QOut("")

    NEXT

    IF lAcertou == .F.
        QOut("Suas tentativas acabaram.")
        QOut("O número sorteado era: " + AllTrim(Str(nNumeroSorteado)))
    ENDIF

RETURN NIL