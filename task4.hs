palindrome s = s == reverse s

max_list [] = []
max_list [a] = [a]
max_list (a:b:cs) = max_list ((max a b):cs)

to_int :: [String] -> [Int]
to_int = map read

numbers = [x * y | x <- [100 .. 999], y <- [100 .. 999], x > y]

palindromes = to_int (filter palindrome (map show numbers))

max_pal = take 1 (max_list palindromes)

