module Template.Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (..)
import Models exposing (..)


view : Model -> Html.Html Msg
view model = nav model


nav : Model -> Html Msg
nav model =
    header [ class "navbar navbar-fixed-top navbar-inverse" ]
        [ div [ class "container" ]
            [ div [ class "navbar-header" ]
                [ button
                    [ class "navbar-toggle"
                    , attribute "data-target" "#myNavBar"
                    , attribute "data-toggle" "collapse"
                    ]
                    [ span [ class "icon-bar" ] []
                    , span [ class "icon-bar" ] []
                    , span [ class "icon-bar" ] []
                    ]
                , li []
                    [ a [ href "#home", id "logo" ]
                        [ text "Best app" ]
                    ]
                ]
            , Html.nav [ class "collapse navbar-collapse", id "myNavBar" ]
                [ ul [ class "nav navbar-nav navbar-right" ]
                    [ li []
                        [ a [ href "#help" ]
                            [ text "Help" ]
                        ]
                    , li []
                        [ a [ href "#login" ]
                            [ text "Login" ]
                        ]
                    ]
                ]
            ]
        ] 