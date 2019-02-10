module Utils.Validation exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
--import Styles.Styles exposing (..)



viewValidation : Model -> Html Msg
viewValidation model =
  let
    (color, message) =
      if model.password == model.passwordAgain then
        ("green", "Пароли совпадают")
      else
        ("red", "Пароли не совпадают!")
  in
    div [ style [("color", color)] ] [ text message ]



-- sendData : Model -> Html Msg 
-- sendData model = 
--     if model.state == False then
--         div [] []
--       else
--         div [ ] [ 
--           div [ nameStyle ] [ text model.name ],
--           div [] [ text model.password ]
--         ]      