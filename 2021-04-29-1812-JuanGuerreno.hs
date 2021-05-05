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

Alf — 05/05/2021
Perdón, me colgué en la respuesta. No, esta no es la forma de pensarlo. Si la composición recibe una función de b en c y una función de a en b, y devuelve una función de a en c:
(.) :: (b -> c) -> (a -> b) -> a -> c

¿Quién es f en ese lío?
¿Qué es lo que está recibiendo y qué está devolviendo en realidad f? ¿Qué es c?
-}