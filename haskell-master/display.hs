main = do
    putStrLn "Numero a imprimir:"
    n <-getLine
    let 
        x1 = cadena n 0
        x2 = cadena n 1
        x3 = cadena n 2
        x4 = cadena n 3
        x5 = cadena n 4
        x6 = cadena n 5
        x7 = cadena n 6
    putStrLn $ show x1
    putStrLn $ show x2
    putStrLn $ show x3
    putStrLn $ show x4
    putStrLn $ show x5
    putStrLn $ show x6
    putStrLn $ show x7

cadena [] _= ""
cadena (x:resto) a = 
    imprime x a ++ cadena resto a

imprime x a 
    |and [True , x=='0'] = cero a
    |and [True , x=='1'] = uno a 
    |and [True , x=='2'] = dos a 
    |and [True , x=='3'] = tres a 
    |and [True , x=='4'] = cuatro a 
    |and [True , x=='5'] = cinco a 
    |and [True , x=='6'] = seis a 
    |and [True , x=='7'] = siete a
    |and [True , x=='8'] = ocho a
    |and [True , x=='9'] = nueve a  

cero linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "*  * "
    |and [True,linea==2] = "*  * "
    |and [True,linea==3] = "*  * "
    |and [True,linea==4] = "*  * "
    |and [True,linea==5] = "*  * "
    |and [True,linea==6] = "**** "
    |otherwise = ""

uno linea
    |and [True,linea==0] = " **  "
    |and [True,linea==1] = "* *  "
    |and [True,linea==2] = "  *  "
    |and [True,linea==3] = "  *  "
    |and [True,linea==4] = "  *  "
    |and [True,linea==5] = "  *  "
    |and [True,linea==6] = "**** "
    |otherwise = ""

dos linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "   * "
    |and [True,linea==2] = "   * "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "*    "
    |and [True,linea==5] = "*    "
    |and [True,linea==6] = "**** "

tres linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "   * "
    |and [True,linea==2] = "   * "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "   * "
    |and [True,linea==5] = "   * "
    |and [True,linea==6] = "**** "

cuatro linea
    |and [True,linea==0] = "*  * "
    |and [True,linea==1] = "*  * "
    |and [True,linea==2] = "*  * "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "   * "
    |and [True,linea==5] = "   * "
    |and [True,linea==6] = "   * "

cinco linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "*    "
    |and [True,linea==2] = "*    "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "   * "
    |and [True,linea==5] = "   * "
    |and [True,linea==6] = "**** "

seis linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "*  * "
    |and [True,linea==2] = "*    "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "*  * "
    |and [True,linea==5] = "*  * "
    |and [True,linea==6] = "**** "

siete linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "*  * "
    |and [True,linea==2] = "   * "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "   * "
    |and [True,linea==5] = "   * "
    |and [True,linea==6] = "   * "

ocho linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "*  * "
    |and [True,linea==2] = "*  * "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "*  * "
    |and [True,linea==5] = "*  * "
    |and [True,linea==6] = "**** "

nueve linea
    |and [True,linea==0] = "**** "
    |and [True,linea==1] = "*  * "
    |and [True,linea==2] = "*  * "
    |and [True,linea==3] = "**** "
    |and [True,linea==4] = "   * "
    |and [True,linea==5] = "   * "
    |and [True,linea==6] = "**** "