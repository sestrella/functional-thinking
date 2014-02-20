-- list comprehension
createList = [(x, y) | x <- [1..4], y <- [3]]

-- pattern matching
head' (x : _) = x

tail' (_ : xs) = xs

-- guards
max' a b
  | a > b     = a
  | otherwise = b

-- map & foldl
addToList ls n = map (+ n) ls

sumList ls = foldl (+) 0 ls
