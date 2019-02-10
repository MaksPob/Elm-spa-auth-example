module View exposing (..)

import Html exposing (..)
import Msgs exposing (..)
import Models exposing (..)
import Template.MainContainer



-- VIEW
view : Model -> Html Msg
view model =
     Template.MainContainer.view model
