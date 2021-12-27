main = do
       let arr = [1,5,19]
       print "The second element of [1,5,19] is:"
       print $ arr !! 1
       print "The index starts from 0, so, arr[0]:"
       print $ arr !! 0
       print "Not surprisingly, arr[2]:"
       print $ arr !! 2
       print "What about arr[21]? well, nope, you get an error..."
       print $ arr !! 21
