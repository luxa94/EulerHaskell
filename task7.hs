pr n [] = True
pr n (x:xs) = mod n x /= 0 && pr n xs

max_list [] = []
max_list [a] = [a]
max_list (a:b:cs) = max_list ((max a b):cs)

foo xs [] = xs
foo xs (y:ys)
  | length xs >= 10001 = xs
  | otherwise = if pr y xs then foo (y:xs) ys else foo xs ys

s = max_list ( foo [] [2..])

