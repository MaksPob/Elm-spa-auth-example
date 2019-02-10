module Styles.Styles exposing (..)

import Msgs exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)



-- Styles

nameStyle : Attribute Msg
nameStyle =
  style
  [ ("font-size", "20px")
  , ("font-family", "monospace")
  , ("text-align", "center")
  , ("padding-left", "100px")
  , ("background-color", "red")
  ]       

wrapper : Attribute Msg
wrapper =
  style
  [ ("background-color", "#57C785")
  , ("height", "100vh")
  , ("padding-top", "200px")
  , ("background", "linear-gradient(to top, #CAC9C9 10%, #FAFAFA 90%)")
  ]    

styleH2 : Attribute Msg
styleH2 =
  style
  [ ("color", "green")
  ]  


styleWelcomeText : Attribute Msg
styleWelcomeText =
  style
  [ ("height", "72px")
  , ("font-family", "Roboto")
  , ("font-style", "normal")
  , ("line-height", "normal")
  , ("letter-spacing", "normal")
  , ("text-align", "left")
  , ("color", "#ffffff")
  , ("display", "flex")
  , ("flex-wrap", "wrap")
  ]   


styleNameApp : Attribute Msg
styleNameApp =
  style
  [  ("display", "flex")
   , ("width", "100%")
   , ("justify-content", "center")
  ]


styleWelcomeDes : Attribute Msg
styleWelcomeDes =
  style
  [ ("display", "flex")
  , ("flex-wrap", "wrap")
  , ("font-family", "Roboto")
  , ("font-size", "20px")
  , ("font-weight", "300")
  , ("color", "#2C2C2C")
  , ("justify-content", "center")
  , ("width", "100%")
  ]



btnReg : Attribute Msg
btnReg =
  style
  [  ("width", "74px")
  , ("height", "22px")
  , ("background-color", "#0078e8")
  , ("color", "white")
  , ("border", "none")
  ] 

  
buttonsLogin : Attribute Msg
buttonsLogin =
  style
  [ ("display", "flex")
  , ("justify-content", "center")
  , ("margin-top", "30px")
  ] 


headName : Attribute Msg
headName =
  style
  [ ("color", "#2C2C2C")
   , ("font-family", "Roboto, sans-serif")
   , ("padding-left", "5px")
   , ("padding-right", "5px")

  ] 

randomWord : Attribute Msg
randomWord =
  style
  [ ("color", "#6E6E6E")
  , ("font-family", "Lato")
  
  ]
