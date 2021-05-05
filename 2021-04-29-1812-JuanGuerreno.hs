sumaPar :: Number -> Number -> Bool
sumaPar = f.(+)

f :: (Number -> Number) -> Number -> Bool
f funcionParcialSuma numero = (even . funcionParcialSuma) numero

{-
El tipo de la funcion f seria 
- Primero recibe una funcion. Que seria una funcion parcial (+ algo)
- Y despues recibe el segundo numero
Y se puede componer ya que la funcion f recibe dos parametros uno que es la fucion parcial y el otro que es un numero.
Es como que la funcion f recibe la funcion + por partes, por un lado (+ algo) y como segundo argumento el otro numero.
-}