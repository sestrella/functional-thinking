fibonacciList max = [ fibonacci x | x <- [1..max] ]

fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci(n - 1) + fibonacci(n - 2)

findMax n
  | f < 10000 = findMax(n + 1)
  | otherwise = n - 1
  where f = fibonacci(n)

evenFilter xs = [ x | x <- xs, even x ]

-- Without composition: sum [ x | x <- [ fibonacci y | y <- [1..findMax(0)] ], even x ]
-- With composition:    (sum . evenFilter . fibonacciList . findMax) 0
