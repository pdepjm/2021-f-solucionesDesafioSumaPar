sumaPar :: Number -> Number -> Bool
sumaPar = f. (+) 
f _ = even 

{-
el even va a recibir un Number->Bool  y el (+) necesita 2 Numbers entonces lo que tendría que hacer 
la f es recibir la funcion que suma los 2 number , por eso se usa el "_" para que pueda recibir esa función.
Basicamente escribirlo de esta manera es lo mismo q escribirlo como SumpaPar x y= even(x+y) pero con composición
Si no me gane el café espero haberme ganado el báculo al menos...
-}

{-
Alf — 29/04/2021
Hola lean!
¡Grande por animarte!

Le falta, varias cosas:
1. No funciona como se espera. sumaPar 5 3 debería darte True pero te da False.
2. Te falta el tipo de f
3. La explicación no está bien, tiene que ver con el tipo de f
-}