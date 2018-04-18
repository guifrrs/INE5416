module Main (main) where
  import Arvore

  main = do
    print (somaElementos minhaArvore)
    print (buscaElemento minhaArvore 12)
    print (quantidade minhaArvore)
    print (elementos minhaArvore)