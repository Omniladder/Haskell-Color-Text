module Main where


import System.IO
import System.Console.ANSI --Imports working library

setColor :: Color -> IO()
setColor color = setSGR [SetColor Foreground Vivid color] -- sets color to display to proper color via libraryb

convertColor :: String -> Color --Used to set Color is one found
convertColor "Red" = Red 
convertColor "Blue" = Blue 
convertColor "Black" = Black 
convertColor "Green" = Green
convertColor "Yellow" = Yellow
convertColor "Magenta" = Magenta 
convertColor "Cyan" = Cyan
convertColor _ = White -- Sets each color to its Corresponding Color


main :: IO ()

main = do 
 


 putStrLn ("")
 putStrLn "Input Text Output"

 textOutput <- getLine

 putStrLn ""
 putStrLn "Available Colors"
 putStrLn "Red - Blue - Black - Green - Yellow - Magenta - Cyan - White" --Displays Options
 putStrLn ""

 putStrLn "Input Text Color"
 
 colorOutput <- getLine
 

 let color = convertColor colorOutput --turns Inputted String to to cooresponding color
 
 setColor color -- Sets the Color to Display Text

 putStrLn ("")
 putStrLn (textOutput)
