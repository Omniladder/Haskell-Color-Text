module Main where


import System.IO
import System.Console.ANSI

setColor :: Color -> IO()
setColor color = setSGR [SetColor Foreground Vivid color]

convertColor :: String -> Color --Used to set Color is one found
convertColor "Red" = Red 
convertColor "Blue" = Blue 
convertColor "Black" = Black 
convertColor "Green" = Green
convertColor "Yellow" = Yellow
convertColor "Magenta" = Magenta 
convertColor "Cyan" = Cyan
convertColor _ = White


main :: IO ()

main = do 
 


 putStrLn ("")
 putStrLn "Input Text Output"

 textOutput <- getLine

 putStrLn ""
 putStrLn "Available Colors"
 putStrLn "Red - Blue - Black - Green - Yellow - Magenta - Cyan - White"
 putStrLn ""

 putStrLn "Input Text Color"
-- colorOutput <- getLine
 colorOutput <- getLine
 

 let color = convertColor colorOutput
 
 setColor color

 putStrLn ("")
 putStrLn (textOutput)
