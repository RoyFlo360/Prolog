main = do
    putStr "x: "
    linea <- getLine
    let
        x = read linea :: Double
        s  = seno 20 0 x (-1)
        c = coseno 20 0 x (-1)
        v = s**2 + c**2
    putStrLn $ "sin(" ++ (show x) ++ ") = " ++ (show s)
    putStrLn $ "cos(" ++ (show x) ++ ") = " ++ (show c)
    putStrLn $ "sin^2+cos^2: " ++ (show v) 

seno final actual x signo
    | actual > final = 0
    | otherwise = ((x**((2*actual)+1)*(signo**actual)))/factorial ((2*actual)+1) + seno final (actual+1) x signo 
coseno final actual x signo
    | actual > final = 0
    | otherwise = ((x**((2*actual))*(signo**actual)))/factorial ((2*actual)) + coseno final (actual+1) x signo 
factorial 0 = 1
factorial n=n*factorial(n-1)


