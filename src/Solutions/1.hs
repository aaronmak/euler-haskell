main :: IO ()

-- If we list all the natural numbers below 10 that are
-- multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.

isMultiple (x,y) = x `mod` y == 0
isMultipleOfThree x = isMultiple(x, 3)
isMultipleOfFive x = isMultiple(x, 5)

answer = sum (
    filter (\x -> isMultipleOfThree x || isMultipleOfFive x) [1..999]
  )

main = putStrLn (show answer)
