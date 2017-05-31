fib 0 = 1
fib 1 = 2
fib n = fib (n - 1) + fib (n - 2)

a = takeWhile ( < 4000000) (map fib [1..])
s = sum $ filter even a
print s
