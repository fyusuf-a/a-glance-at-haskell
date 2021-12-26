import System.Environment
import Control.Monad

main = do
  putStrLn "Hello"
  args <- getArgs
  when (length args == 2)
    undefined_function
