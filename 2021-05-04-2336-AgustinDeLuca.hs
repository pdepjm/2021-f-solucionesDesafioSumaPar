
sumaPar :: Number -> Number -> Bool
sumaPar = f.(+)

f :: (a -> Number) -> a -> Bool
f func = even . func


{-
Wolfgang — Today at 12:03 AM
El (+) en la composición tiene que devolver sí o sí algo de tipo (Number->Number) que es el func de f. Pero no termino de entender cómo se ejecuta y cómo entra el segundo número
palumbon — Today at 12:04 AM
Vamos bien

Wolfgang — Today at 12:13 AM
lo que me vuela la cabeza es cómo actúa el segundo parámetro, porque  al ser una composición, pensé que sólo se podía usar un sólo parámetro porque no lo mencionás. Entonces, al pasarle los dos parámetros se resuelve el (+) como (num1 +) y después se le agrega el num2? o al ser el (+) Number -> Number -> Number ya se esperan los dos parámetros?


palumbon — Today at 12:28 AM
La clave para entender el segundo parámetro es entender que no existen las funciones de más de un parámetro o sea, que las funciones están currificadas

Wolfgang — Today at 12:29 AM
claro, eso masomenos lo caché, pero si (+) se currifica, pero no develve (num1 +), no entiendo qué devuelve
palumbon — Today at 12:31 AM
El (+) se currifica y sí devuelve (num1 +)!
Que es justamente lo que espera f :stuck_out_tongue:
Wolfgang — Today at 12:32 AM
y por qué f.(num1 +) no tipa???
Me voy a volver loco jajajaj
palumbon — Today at 12:32 AM
Porque ahí no estás pasando la función por parámetro, la estás componiendo
La composición es con la función (+)
(num1 +) es el resultado de esa función que le llega como parámetro a f
aplicar ≠ componer
Wolfgang — Today at 12:34 AM
o sea que en f estás haciendo even . (num 1 +)
y ahí le entra el segundo parámetro
palumbon — Today at 12:34 AM
Ahí sí me gusta más

-}