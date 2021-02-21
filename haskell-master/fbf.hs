{-
 programa: fbf.hs

 formulas bien formadas (FBF)
 Una formula bien formada es una expresion no ambigua.
 esto es. por cada operador (binario,unitario),hay un juego de parentesis.
 nota: en algunos casos se omiten los parentesis mas externos

 ejemplos. considera variables de una letra:
 a
 (a+b)
 ((a+b)+c)
 (a+(b+c))
 ((a+b)+(a+c))

 Definicion (inductiva)
de FBF
sea v={a,b,c,...} el conjutno de variables
El conjunto de FBF se define como:
Base: si x es una variable ,entopnces x es una FBF
INDUCCION: SI x,y son FBF,entonces tambien los son:
    a)(x+y)
    b)(x-y)
    c)(x*y)
    d)(x/y)
    e)(x%y)
    f)(-x)
EXTREMA: ningun objeto es una FBF a menos que pueda obtenerse
aplicando un numero finito de veces base e induccion

-}
import System.Environment
main = do 
    args <-getArgs
    let expresion = expre args
    putStrLn $ "Expresion: " ++ expresion
    let posfija = expPosfija expresion 0 ((length expresion)-1)
    putStrLn $ "Expresion postfija: " ++ posfija

expre []="(a+b)"
expre getArgs =getArgs !! 0


expPosfija expresion a b
    |a==b=[expresion !! a]
    |otherwise =
        (expPosfija expresion (a + 1) ((posOp expresion (a + 1) (b - 1) 0) -1 )) ++
        (expPosfija expresion ((posOp expresion (a + 1) (b - 1) 0) + 1) (b - 1)) ++
        [expresion !! (posOp expresion (a + 1) (b - 1) 0)]

operador x = or [x=='+',x=='-',x=='*',x=='/',x=='%']

posOp expresion inf sup prof
    | or [inf > sup,prof < 0] = -1
    | and [operador (expresion !! inf),prof==0] = inf
    | (expresion !! inf)=='('=posOp expresion (inf+1) sup (prof+1)
    | (expresion !! inf)==')'=posOp expresion (inf +1) sup (prof -1)
    | otherwise = posOp expresion (inf+1) sup prof 

