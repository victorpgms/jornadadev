FUNCTION Main()
   LOCAL aCarrinho := {}
   LOCAL cNome := ""
   LOCAL cInputPreco := ""
   LOCAL nPreco := 0
   LOCAL cOpcao := ""
   LOCAL nTotal := 0
   LOCAL nI := 0
   LOCAL aItem := {}

   QOut("==========================================")
   QOut("           CARRINHO DE COMPRAS            ")
   QOut("==========================================")
   QOut("")

 
   DO WHILE .T.
      QOut("--- Adicionar Produto ---")


      DO WHILE .T.
         ACCEPT "Nome do produto: " TO cNome
         cNome := AllTrim(cNome)

         IF Len(cNome) > 0
            EXIT
         ELSE
            QOut("Digite o produto")
         ENDIF
      ENDDO

      // Validação do Preço
      DO WHILE .T.
         ACCEPT "Preco do produto (R$): " TO cInputPreco
         cInputPreco := AllTrim(cInputPreco)

         IF Len(cInputPreco) > 0
            nPreco := Val(cInputPreco)
            IF nPreco > 0
               EXIT
            ENDIF
         ENDIF

         QOut("Erro: Digite um valor numérico maior que zero.")
      ENDDO


      AAdd(aCarrinho, { cNome, nPreco })
      QOut("-> Item adicionado com sucesso!")
      QOut("")

      
      ACCEPT "Deseja adicionar outro produto? (S/N): " TO cOpcao
      cOpcao := Upper(AllTrim(cOpcao))

      IF cOpcao != "S"
         EXIT // Encerra o cadastro de itens
      ENDIF

      QOut("")
   ENDDO

   QOut("==========================================")
   QOut("            RESUMO DA COMPRA              ")
   QOut("==========================================")

   IF Len(aCarrinho) == 0
      QOut("O carrinho esta vazio.")
   ELSE

      QOut(PadR("PRODUTO", 28) + PadL("PRECO", 12))
      QOut("------------------------------------------")

  
      FOR nI := 1 TO Len(aCarrinho)
         aItem := aCarrinho[nI]
         
         QOut(PadR(aItem[1], 28) + PadL("R$ " + AllTrim(Transform(aItem[2], "999,999.99")), 12))
         
         nTotal += aItem[2] // Acumula o preço
      NEXT

      QOut("------------------------------------------")
      QOut(PadR("TOTAL A PAGAR:", 28) + PadL("R$ " + AllTrim(Transform(nTotal, "999,999.99")), 12))
   ENDIF

   QOut("==========================================")
   QOut("")
 
RETURN NIL