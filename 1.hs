import Data.List

-- fibonacci things
fibonacci_base :: Integer -> Integer -> [Integer]
fibonacci_base a b = a:fibonacci_base b (a+b)

fibonacci_list :: Int -> [Integer]
fibonacci_list n 
    | n < 0 = error "Invalid negative number"
    | n > 0 = take n (fibonacci_base 0 1)

fibonacci :: Int -> Integer
fibonacci n
    | n < 0 = error "Invalid negative number"
    | n > 0 = fibonacci_list n !! (n-1)

-- fatorial things
factorial_base :: Integer -> Integer
factorial_base 0 = 1
factorial_base a = a * factorial_base(a-1)

fatorial :: Integer -> Integer
fatorial n
    | n < 0 = error "Invalid negative number"
    | n > 0 = factorial_base n

-- list things
list_remover :: ([a],[a]) -> [a]
list_remover a = (init(fst a)) ++ snd a

remove :: Int -> [a] -> [a]
remove n xs = list_remover (splitAt (n-1) xs)

list_adder :: [a] -> ([a],[a]) -> [a]
list_adder n a = fst a ++ n ++ snd a

add :: Integer -> Int -> [Integer] -> [Integer] 
add x n xs = list_adder [x] (splitAt (n-1) xs)

quicksort :: [Integer] -> [Integer]
quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

divider :: [Integer] -> ([Integer],[Integer])
divider xs = (filter odd xs, filter even xs)

odd_even_separator :: [Integer] -> ([Integer],[Integer])
odd_even_separator xs = divider (quicksort xs)

join :: ([Integer],[Integer]) -> [Integer]
join tuple = fst tuple ++ snd tuple

odd_even_order :: [Integer] -> [Integer]
odd_even_order xs = join (odd_even_separator xs)

main = do
    print (fibonacci 5)
    print (fatorial 5)
    print (fibonacci_list 4)
    print (remove 2 [5,4,3,2,1])
    print (add 0 2 [5,4,3,2,1])
    print (odd_even_separator [8,7,6,5,1,2,3,4])
    print (odd_even_order [8,7,6,5,1,2,3,4])