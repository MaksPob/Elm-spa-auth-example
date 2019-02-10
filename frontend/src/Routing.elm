module Routing exposing (..)

import Navigation exposing (Location)
import Models exposing (ManId, Route(..))
import UrlParser exposing (..)


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map PostsRoute top
        , map PostRoute (s "posts" </> string)
        , map PostsRoute (s "posts")
        , map MyRoute (s "home")
        , map Registration (s "registration")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute