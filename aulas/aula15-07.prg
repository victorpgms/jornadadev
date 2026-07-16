#define _TESTE03 "Teste03"


FUNCTION Main()
/* 
LOCAL - ideal
PRIVATE - dados ..
PUBLIC - 
STATIC - 
*/
    PUBLIC nNumero := 50
    Operacoes()
    Soma()     

    Linha()

    QOut (_TESTE03)


    Linha()
    
    Cadencia()
    
    Linha()

    AndNotOr()

    Linha()

    Noite()

    Linha()

    NomeIdade()

    Linha()

    Calcular()



RETURN NIL

FUNCTION Operacoes() 
    nNumero := 66

    //PRIVATE nNumero := 10

    Soma()
    Substrai()

RETURN NIL       

FUNCTION Soma()
    //LOCAL nNumero := 20
    QOut(nNumero)
    QOut("Função Soma")
RETURN NIL

FUNCTION Substrai()
    //LOCAL nNumero := 30
    QOut(nNumero)  
    QOut("Função Substrai")
RETURN NIL

FUNCTION Cadencia()

    QOut(2 + 3 * 4)
    QOut((2 + 3) * 4)
    Linha()

    QOut ("Harbour" = "Harb") //Compara o tipo de dado - Retornará Vedadeiro
    QOut ("Harbour" == "Harb") //Compara conteudo, retorna false
    //QOut ("1" == 1)


RETURN NIL 

FUNCTION Linha()

    QOut("")
    QOut("--------------------------------------")
    QOut("")

RETURN NIL

FUNCTION AndNotOr()

    LOCAL nIdade := 60
    LOCAL lAtivo := .F.

    IF(nIdade > 60 .AND. lAtivo)
        ? "A pessoa é idosa e está ativa."
    ENDIF

    IF(nIdade < 18 .OR. !lAtivo)
        ? "A pessoa não é idosa ou não está ativa."
    ENDIF

RETURN NIL

FUNCTION Noite()

    LOCAL nNumero := 50
    LOCAL cTexto := "Esse é um texto"
    LOCAL dData := DATE()

    QOut("Número: " + AllTrim(str(nNumero)))
    QOut("Texto: " + cTexto)
    QOut("Data: " + DtoC(dData))

RETURN NIL

FUNCTION NomeIdade()

    LOCAL cNome
    LOCAL nIdade
    LOCAL nValor

    ACCEPT "Digite seu nome: " TO cNome //Lê texto
    INPUT "Digite sua idade: " TO nIdade //Lê numero

    ACCEPT "Digite um valor de 1 a 10: " TO nIdade //Lê texto
    nValor := Val(nValor) //Converte String para numero
    //mais seguro converter


RETURN NIL
