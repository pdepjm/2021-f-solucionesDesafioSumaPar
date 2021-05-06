
module DesafioSumaPar where
import PdePreludat

sumaPar :: Number -> Number -> Bool
sumaPar = f.(+)

f :: (a->Number)->a->Bool
f x y= (((==0).(mod (x y))) 2)

-- Explicar el tipo de f y por qué se puede componer con la función (+).
-- RTA: a) Por composición, el retorno de la función X tiene que ser obligatoriamente Number ya que este es el tipo
-- de entra de la función mod.
-- Como desconozco de la función x, puede tener como entrada cualquier cosa, pero lo que sí tiene que retornar Number.
-- y al ser la entrada de X, este tiene que ser del mismo tipo, es decir a.
-- Finalmente, como la composición más externa es el condicional, la función f retorna un bool.
-- b) Se puede componer con la función (+) ya que se está usando alto orden en la composición, es decir, 
-- x e y pasan como parámetros a la función (+) que sería la primera que se aplica. La primera en aplicarse
-- agarra los parámetros y la salida va en cadena a las funciones más externas.
-- Esto es equivalente a : f x y= (((==0).(mod (x+y))) 2), teniendo en cuenta que en Haskell se reemplaza.
-- Se resuelve de la más interna a la más externa la composición como la composición de funciones en matemáticas.

{- 
¡Hola, Alejandro!

¡Genial por animarte a hacer el desafío!

Van algunos comentarios:

Primero, bien por encontrar una solución. +1
Es una lástima que no usaras even, que ya existe, y tuvieras que descomponer la función, no era necesario.
¡Guarda con los nombres! Estaría bueno encontrar mejores nombres que x e y.
Sobre tu justificación:
sumaPar :: Number -> Number -> Bool
sumaPar = f.(+)

f :: (a->Number)->a->Bool
f x y= (((==0).(mod (x y))) 2)
-- RTA: a) Por composición, el retorno de la función X tiene que ser obligatoriamente Number ya que este es el tipo
-- de entra de la función mod.

Ojo que acá: mod (x y) NO hay composición. Estás sencillamente mandando el resultado de aplicar una

-- Como desconozco de la función x, puede tener como entrada cualquier cosa,

Esto no es del todo cierto, porque para que funcione en sumaPar (que era lo que se preguntaba) seguro va a recibir un Number. Está bien que "sueltita" tenga un tipo más genérico, pero la idea era ver quién era ese parámetro de f en sumaPar.

pero lo que sí tiene que retornar Number.

¿Por qué?

-- y al ser la entrada de X, este tiene que ser del mismo tipo, es decir a.

Esto no lo entendí, perdón. La entrada de x es y (Por esto hay que poner buenos nombres!)

-- Finalmente, como la composición más externa es el condicional, la función f retorna un bool.

Esto es cierto, pero no aporta a entender por qué puedo componer una f (que parece recibir dos parámetros) con el (+) (que también parece recibir dos parámetros).

-- b) Se puede componer con la función (+) ya que se está usando alto orden en la composición, es decir,
-- x e y pasan como parámetros a la función (+) que sería la primera que se aplica.

Esto no es cierto, x e y no pasan por parámetro a la función (+).

La primera en aplicarse
-- agarra los parámetros y la salida va en cadena a las funciones más externas.

Hmmm esto no es lo que está pasando

-- Esto es equivalente a : f x y= (((==0).(mod (x+y))) 2), teniendo en cuenta que en Haskell se reemplaza.

No, porque acá la x es un número, no una función

-- Se resuelve de la más interna a la más externa la composición como la composición de funciones en matemáticas.

Hmmm no es tan así.

A ver, pensemos un toque:

Si la composición recibe una función de b en c y una función de a en b, y devuelve una función de a en c:

(.) :: (b -> c) -> (a -> b) -> a -> c
¿Quién es f en ese lío?
¿Qué es lo que está recibiendo y qué está devolviendo en realidad f?
¿Qué es c?
¡Bien por tirar una solución!
Espero tu nueva respuesta grin

-}
