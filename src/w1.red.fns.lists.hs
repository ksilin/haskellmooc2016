add3nums = \x y z -> x + y + z

-- since we are not using the function minmax, the compiler does not know how to infer the types:
-- Ambiguous type variable ‘a0’ arising from a use of ‘min’
minmax :: Integer -> Integer -> [Integer]
minmax = \a b -> [min a b, max a b]


main = do print (add3nums 1 2 3)
          print (minmax 3 5)
          print ( [ 3*z | z <- [0 .. 10]] )
          print ([[a,b] | a <- [10,11,12] , b <- [20,21]])
          print ("list indexing: " ++ show ([5, 4, 3, 2] !! 2))
