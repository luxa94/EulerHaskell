prime_factors n =
  case factors of
    [] -> [n]
    _ -> factors ++ prime_factors ( n `div` (head factors))
  where factors = take 1 $ filter (\ x -> mod n x  == 0) [2 .. round (sqrt (fromInteger n))]
