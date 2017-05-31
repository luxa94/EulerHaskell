foo n = if mod n 3 == 0 then n else if mod n 5 == 0 then n else 0
bar n = sum $ map foo [1 .. n]

