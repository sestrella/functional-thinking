longestCollatz ls = foldl (\acc x -> if snd acc < snd x then x else acc) (head ls) ls

generateSequence max = [ (x, length $ collatzSequence [x] x) | x <- [1..max] ]

collatzSequence ls n
  | c == 1    = 1 : ls
  | otherwise = collatzSequence (c : ls) (c)
  where c = collatz n

collatz n
  | even $ round n = n / 2
  | otherwise      = (3 * n) + 1

-- longestCollatz $ generateSequence 10000
