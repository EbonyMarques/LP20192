string_list :: String -> [String]
string_list []  = []
string_list xxs@(x:xs)  | x == ' ' = string_list xs
                    | otherwise = ys : string_list rest
                      where (ys, rest) = break (== ' ') xxs

list_reverser :: [a] -> [a]  
list_reverser [] = []  
list_reverser (x:xs) = list_reverser xs ++ [x]

list :: [String] -> String
list [] = ""
list (x:xs) | xs == [] = x
                    | otherwise = x ++ " " ++ list xs

text_reverser :: String -> String
text_reverser s = list . list_reverser . string_list $ s

main = do
  print(text_reverser "lá vou eu")
