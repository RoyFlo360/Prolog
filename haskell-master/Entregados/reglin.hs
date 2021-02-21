{-
    Programa: reglin.hs
    Calcular promX, promY, desvX, desvY, pendiente, ordenada, correl
-}

main = do
    putStrLn $ "Da la lista de valores X1: "
    lineaX1 <- getLine
    putStrLn $ "Da la lista de valores X2: "
    lineaX2 <- getLine
    putStrLn $ "Da la lista de valores Y1: "
    lineaY1 <- getLine
    putStrLn $ "Da la lista de valores Y2: "
    lineaY2 <- getLine
    let
        x = read lineaX1 :: [Double]
        y = read lineaY1 :: [Double]
        x2 = read lineaX2 :: [Double]
        y2 = read lineaY2 :: [Double]
        sumaX = suma x
        sumaY = suma y
        sX02 = suma x2
        sY02 = suma y2
        sumaX2 = suma2 x
        sumaY2 = suma2 y
        sumaXY = suma2var x y
        sumaxcuad = sumacuad x
        sumaycuad = sumacuad y
        n = length x
        promX = sumaX / (fromIntegral n :: Double)
        promY = sumaY / (fromIntegral n :: Double)
        mediaX = promX
        mediaY = promY
        desvX = sqrt((sumaX-mediaX)^2/fromIntegral n :: Double)
        desvY = sqrt((sumaY-mediaY)^2/fromIntegral n :: Double)
        pendiente = (sY02 - sumaY)/(sX02 - sumaX)
        sxx = (sumaX2)-((sumaX^2) / fromIntegral n :: Double)
        syy = (sumaY2)-((sumaY^2) / fromIntegral n :: Double)
        sxy = (sumaXY)-((sumaX*sumaY) / fromIntegral n :: Double)
        ordenada = sxy / (sxx*syy)
        correl = (((sumaX-mediaX)*(sumaY-mediaY))/(((fromIntegral n :: Double) - 1)*(desvX*desvY)))
    putStrLn $ "Acumulado x: " ++ (show sumaX)
    putStrLn $ "Acumulado x2: " ++ (show sX02)
    putStrLn $ "Acumulado y: " ++ (show sumaY)
    putStrLn $ "Acumulado y2: " ++ (show sY02)
    putStrLn $ "Acumulado x^2: " ++ (show sumaX2)
    putStrLn $ "Acumulado y^2: " ++ (show sumaY2)
    putStrLn $ "Acumulado xy: " ++ (show sumaXY)
    putStrLn $ "Promedio x: " ++ (show promX)
    putStrLn $ "Promedio y: " ++ (show promY)
    putStrLn $ "Desviación x: " ++ (show desvX)
    putStrLn $ "Desviación y: " ++ (show desvY)
    putStrLn $ "Pendiente: " ++ (show pendiente)
    putStrLn $ "Ordenada: " ++ (show ordenada)
    putStrLn $ "Correlación: " ++ (show correl)

suma [] = 0
suma (x : resto) = x + (suma resto)

suma2 [] = 0
suma2 (x : resto) = x*x + (suma2 resto)

suma2var [] [] = 0
suma2var (x : restoX) (y : restoY) = x*y + (suma2var restoX restoY)
