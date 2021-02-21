
import System.Environment

main = do
    args <- getArgs
    let
        m = read (head args) :: Float
        n = read(args !! 1) :: Float
        x = divicion m n
        a = show x
        t = drop 2 a
        indice = iniciPer t 0 (length t-1)
        l = sec t indice (indice+1)
        per = take l t
        lon = length per
    putStrLn $ show m ++ " " ++ show n ++ ": 0."++"("++ per ++")" ++ " longitud= " ++ show lon
    
divicion m n= m/n

sec _ _ 0 = 0
sec lista a b=
    if (lista !!a) /= (lista !! b)
        then 1 + sec lista a (b+1)
        else 1 + sec lista a 0 

iniciPer _ _ 0 = 2
iniciPer _ 1 _ = 1 
iniciPer lista a b=
    if (lista !! a )/=(lista !! b)
        then iniciPer lista a (b-1)
        else iniciPer lista 1 0
