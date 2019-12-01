string_list :: String -> [String]
string_list []  = []
string_list xxs@(x:xs)  | x == '\n' = string_list xs
                    | otherwise = ys : string_list rest
                      where (ys, rest) = break (== '\n') xxs

list_reverser :: [a] -> [a]  
list_reverser [] = []  
list_reverser (x:xs) = list_reverser xs ++ [x]

poem_reverser :: String -> [String]
poem_reverser x = list_reverser . string_list $ x

printListLines :: [String] -> IO()
printListLines [] = return ()
printListLines (x:xs) = do  putStrLn x
                            printListLines xs

main = do
  printListLines(poem_reverser "Não te amo mais.\nEstarei mentindo dizendo que\nAinda te quero como sempre quis.\nTenho certeza que\nNada foi em vão.\nSinto dentro de mim que\nVocê não significa nada.\nNão poderia dizer jamais que\nAlimento um grande amor.\nSinto cada vez mais que\nJá te esqueci!\nE jamais usarei a frase:\nEU TE AMO!\nSinto, mas tenho que dizer a verdade\nÉ tarde demais...")