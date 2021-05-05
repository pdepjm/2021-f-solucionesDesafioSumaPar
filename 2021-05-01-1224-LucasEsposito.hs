-- Codigo : 
sumaPar :: Number -> Number -> Bool
sumaPar = f.(+)

f :: (Number -> Number ) -> Number -> Bool
f g = even . g   

{-
Explicacion :
f es una funcion que recibe como para parametros una funcion (g) , en el que recibe un numero y devuelve  otro , y un numero  , es decir , f es una funcion de orden superior .
Al aplicar g , se obtiene un numero y junto con el otro numero como parametro se opera con la funcion even (a traves de composicion) , el cual retorna un booleano al evaluar si ese numero resultante es par .
f se puede componer con (+) porque (+) es una funcion que devuelve como imagen un numero y justo coicide con el dominio de f , el cual recibe como parametro un numero

palumbon — 05/01/2021
Hola! El ejercicio está bien pero la explicación no
se obtiene un numero y junto con el otro numero como parametro se opera con la funcion even
even cuántos parámetros espera?
f se puede componer con (+) porque (+) es una funcion que devuelve como imagen un numero y justo coicide con el dominio de f
Y esto tampoco es así, f espera como primer parámetro una función, no un número
.... entonces, cómo funciona lo que escribiste?
Espo — 05/01/2021
Gracias profe  por el comentario , sinceramente yo no lo entiendo muy bien , por eso me genero dudas a la hora de explicarlo y se me complico .  Con respecto a tus preguntas , even es una funcion que espera un solo parametro  (que es un numero)  y g es una funcion que recibe un numero y devuelve otro . Entonces , en la composicion   de f , primero se aplica g , el cual va a devolver un numero y con ese numero se utiliza como parametro para luego emplearlo en even , y por esa razon f devuelve un booleano . Ahora bien y es la duda que me sigue surgiendo de la funcion sumaPar, si f recibe una funcion como parametro , en este caso seria la funcion (+) ?  porque (+)  recibe dos numeros y devuelve otro como parametro , no una funcion , y me confunde  . No se me ocurre otra cosa jaja
palumbon — 05/02/2021
Bien! Vas bien. En eso último que decís está la clave. Decís que el (+) es una una función de dos parámetros, lo cual es cierto, pero recordá que las funciones de Haskell están currificadas, lo que significa que todas las funciones son de un solo parámetro. :scream:
La pregunta es, cómo podemos pensar la función (+) de solo un parámetro, qué devuelve si recibe un solo parámetro?
Espo — 05/02/2021
Claro .  Si la función (+) recibe un solo parámetro , devuelve  una función que recibe un numero y devuelve otro numero , el cual justo coincide con la función g que habia declarado en f  , verdad?
palumbon — 05/02/2021
Exacto!!! :clap:
-}
