riemanBlock (intA, intB) f
  | intA > intB     = riemanBlock (intB, intA) f
  | otherwise       = ((f intA) + (f intB)) / 2.0 * (intB-intA) 

riemanIterator [a] _ = []
riemanIterator (p:q:ps) f = (riemanBlock (p, q) f) : (riemanIterator (q:ps) f)

riemanSum partition f  = sum (riemanIterator partition f)

createPartition (intA, intB) n
  | intA > intB = createPartition (intB, intA) n
  | otherwise   = [intA, intA+(intB-intA)/n .. intB]

integralIterator lastInt lastN (intA, intB) f prec
  | prec > abs (lastInt - currentInt) = currentInt
  | otherwise                         = integralIterator currentInt currentN (intA, intB) f prec
  where currentN = lastN * 2
        currentInt = riemanSum (createPartition (intA, intB) currentN) f

integral (intA, intB) f  = let prec = 0.0000000001
                           in integralIterator (riemanSum [intA, intB] f) 1 (intA, intB) f prec

main = do
  putStrLn $"Da el valor de lim inf: "
  linea <- getLine
  let inf = read linea :: Double
  putStrLn $"Da el valor de lim sup: "
  linea <- getLine
  let sup = read linea :: Double
  print $ integral (inf, sup) sin