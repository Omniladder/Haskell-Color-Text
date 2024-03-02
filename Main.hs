module Main where


import System.IO
import System.Console.ANSI

setColor :: Color -> IO()
setColor color = setSGR [SetColor Foreground Vivid color]

convertColor :: String -> Color --Used to set Color is one found
convertColor "Red" = Red 
convertColor _ = White


main :: IO ()

main = do 
 putStrLn "Input Text Output"

 textOutput <- getLine


 putStrLn "Input Text Color"
-- colorOutput <- getLine
 colorOutput <- getLine
 

 convertColor colorOutput
 

 putStrLn (textOutput)
