sumaPar :: Number -> Number -> Bool
sumaPar = f.(+)
 
f :: (Number  -> Number) -> Number  -> Bool
f funcionQueSuma = even . funcionQueSuma 

funcionQueSuma :: Number -> Number -> Number 
funcionQueSuma num1 num2 = num1 + num2


-- Es posible gracias a que el tipo de entrada de "f" 
-- es el mismo que el tipo de salida de "(+)"
-- Esta correspondencia entre la imagen de (+) y el dominio de "f"
-- Es necesaria en la composicion de funciones.
-- Para ser posible la composicion, es necesario que cada funcion reciba
-- Solo un parámetro, es por esto que pasamos "funcionQueSuma" como único
-- Parámetro de "f"
-- Luego el tipo de "f" se deduce de ir recorriendo 
-- desde los parámetros que recibe "funcion que suma" "hacia arriba" 
-- De la siguiente manera:
-- f :: ( tipo(num1) 
-- -> tipo(num2) )
-- -> tipo(funcionQueSuma num1 num2) 
-- -> tipo(even (funcionQueSuma num1 num2))


{-
Alf — 29/04/2021
Hola, Facundo!
Grande por coparte con el desafío!!

Varias cosas:

- La función funcionQueSuma se llama igual que el parámetro de f.  Eso se puede hacer, no hay problema. Pero sospecho que no estás entendiendo qué está pasando. ¿Se está evaluando la función funcionQueSuma de tus últimas dos líneas de código? ¿Se está usando?
- No explicás por qué f tiene el tipo que tiene. ¿Cómo conseguiste ese tipo? ¿Lo escribiste vos o te lo dijo el VSCode? 
- No es cierto que es necesario que cada función reciba un sólo parámetro para componer, lo que me da la pauta que te falta un poquito entender todavía.

Acá espero otro intento :smiley:

Facundo Agustín Fernández — 29/04/2021
no, es verdad! No se están usando las últimas dos lineas, puede ser que la "funcion que suma" que le estoy pasando a "f" sea el mismísimo "(+)" con el que se compone mas arriba?
Lo del tipado lo pensé como "Si f toma lo que da (+), (+) es de tipo Number -> Number -> Number, entonces f toma eso y retorna Bool"
No se si es válido pensarlo asi

Alf — 29/04/2021
Bien lo de funcionDeSuma

Alf — 05/05/2021
Perdón, me colgué en la respuesta. No, esta no es la forma de pensarlo. Si la composición recibe una función de b en c y una función de a en b, y devuelve una función de a en c:
(.) :: (b -> c) -> (a -> b) -> a -> c

¿Quién es f en ese lío?
¿Qué es lo que está recibiendo y qué está devolviendo en realidad f? ¿Qué es c?

-}