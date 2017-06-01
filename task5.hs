foo n [] = n
foo n (x:xs) = foo a xs
  where a = n * x `div` (gcd n x)

bar = foo 1
s = bar [1 .. 20]
