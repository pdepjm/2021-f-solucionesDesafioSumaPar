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
-}
