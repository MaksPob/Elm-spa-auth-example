module Template.Footer exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (..)
import Models exposing (..)


view : Model -> Html.Html Msg
view model = footer model


footer : Model -> Html Msg
footer model =
    Html.footer [ class "container" ]
        [ small [] [ text "Copyright © 2016" ]
        , Html.nav []
            [ ul []
                [ li []
                    [ a [ href "#posts/6" ]
                        [ text "About" ]
                    ]
                , li []
                    [ a [ href "#home" ]
                        [ text "Home" ]
                    ]
                ]
            ],
             a [ href "#posts/5" ] [ text "Edit" ] 
        ]    