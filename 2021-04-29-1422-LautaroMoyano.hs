f :: (a -> Integer) -> a -> Bool
-- f = ((==0).).((`rem` 2))
f  = (even.)

-- Seria una funcion de orden superior que toma una funcion de 'a' (cualquier cosa) a los numeros y la transforma en una funcion que en si toma cualquier cosa y devuelve un booleano. Siguiendo el orden del operador (.), f toma lo que produce la funcion que entra al tomar el 'a', lo reduce modulo 2 y finalmente compara el resultado con 0.

-- El (+) basicamente toma un numero y devuelve una funcion que toma un numero y produce una funcion.

-- Siguiendo nuevamente el orden de composicion, basicamente tenemos que ((==0).).((`rem` 2)).(+) toma un entero, lo convierte en una funcion Num -> Num, despues la transforma en otra funcion Num -> Num (al reducir mod 2) y finalmente transforma esa funcion que queda en una que es Num -> Bool. Darle el otro numero simplemente evalua esa funcion resultante en un numero en particular.

