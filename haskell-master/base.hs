import System.IO
import Data.Char
import System.Environment

main = do
    args <- getArgs
    let
        base = read (args !! 2) :: Int
        val1 = args !! 0
        val2 = args !! 1
        bien1 = valida val1 base
        bien2 = valida val2 base
    putStrLn $ "Bien Escrito 1: " ++ (show bien1)
    putStrLn $ "Bien Escrito 2: " ++ (show bien2)
    if and [bien1, bien2]
        then do
            let
                a = aDecimal val1 base ((length val1) - 1)
                b = aDecimal val2 base ((length val2)-1)
                c = a + b
                d = a * b
                val3 = aBaseN c base
                val4 = aBaseN d base
            putStrLn $ "Valor 1 decimal: " ++ (show a)
            putStrLn $ "Valor 2 decimal: " ++ (show b)
            putStrLn $ "Suma decimal: " ++ (show c)
            putStrLn $ "Producto decimal: " ++ (show d)
            putStrLn $ "Suma base N: " ++ val3
            putStrLn $ "Producto base N: " ++ val4
        else do
            putStrLn "No pueden hacerse operaciones"

listaDigitos base
    | base <= 10 = ['0'..(chr (47 + base))]
    | otherwise = ['0'..'9'] ++ ['a'..(chr(86 + base))]

pertenece x lista
    | lista == [] = False
    | x == (head lista) = True
    | otherwise = pertenece x (tail lista)

valida [x] base = pertenece x (listaDigitos base)
valida (x : resto) base = and [
    pertenece x (listaDigitos base),
    valida resto base]

valor x
    | x <= '9' = (ord x) - 48
    | otherwise = (ord x) - 87

aDecimal [] _ _ = 0
aDecimal (x : resto) base pot =
    (valor x) * (potencia base pot) + (aDecimal resto base(pot - 1))

potencia _ 0 = 1
potencia x n = x * (potencia x (n - 1))

digitoBase n base
    | n <= 9 = chr (48 + n)   
    | otherwise = chr (87 + n)

aBaseN 0 _ = ['0']
aBaseN n base = (aBaseN (div n base) base) ++
    [digitoBase (mod n base) base]