main = do
    putStr "da una lista de enteros"
    linea <- getLine
    let
        original = read linea :: [Int]
        ordenadaSelection = ssort original
    putStrLn $ "lista original " ++ (show original)
    putStrLn $ "lista ordenada" ++ (show ordenadaSelection)

remove _ [] = []
remove valor (x:resto)
    |valor == x =resto
    | otherwise = x:remove valor resto

valormin []=0
valormin [x]=x
valormin (x:y:resto)
    | x > y = valormin (y:resto)
    | x < y = valormin (x:resto)
    | x == y = valormin (x:resto)

ssort [] = []
ssort resto = aux : ssort (remove aux resto) where aux = valormin resto