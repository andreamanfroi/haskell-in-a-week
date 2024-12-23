
identity = id

main = do
  print $ "The value of the id function applied to the int 3 is :"
  print $ identity 3
  print $ "The value of the id function applied to the string hello  is :"
  print $ identity "hello"
  print $ "Yeah, you get you input back, also for list!"
  print $ map identity [1,2,3,4]