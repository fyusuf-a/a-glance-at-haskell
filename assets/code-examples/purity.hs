launchNuclearStrike :: IO ()
launchNuclearStrike = undefined

justAdd :: Int -> Int -> IO Int
justAdd x y = do
  launchNuclearStrike
  return (x + y)

main :: IO ()
main = do
  let x = 15
  let y = 24
  result <- justAdd x y
  putStrLn (show x ++ "+" ++
              show y ++ "=" ++ show result)
