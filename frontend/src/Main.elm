module Main exposing (..)


import Msgs exposing (..)
import Models exposing (..)
import Update exposing (update)
import View exposing (view)
import Navigation exposing(..)
import Routing exposing (..)


init : Flags -> Location -> ( Model, Cmd Msg )
init flags location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( initialModel flags currentRoute, Cmd.none )



-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model = Sub.none


-- MAIN
main : Program Flags Model Msg
main =
    Navigation.programWithFlags LocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

