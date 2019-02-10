module Template.MainContainer exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Msgs exposing (..)
import Models exposing (..)
import Styles.Styles exposing (..)
import Template.Header 
import Template.Footer 
import Utils.Validation exposing(..) 
import Random exposing(..)
import Array

view : Model -> Html.Html Msg
view model = pageRoute model


pageRoute : Model -> Html Msg    -- get route
pageRoute model =
    case model.route of
        Models.PostsRoute ->
            authPage model

        Models.PostRoute id ->
            newPage id

        Models.MyRoute ->
            newMyPage model

        Models.Registration ->
            registration model 

        Models.NotFoundRoute ->
            notFoundView    



authPage : Model -> Html Msg
authPage model = 
   mainContent model


homePage : Model -> Html Msg
homePage model = 
   div [ wrapper ]
    [ Template.Header.view model
    , mainContent model
    , Template.Footer.view model
    ]

mainContent : Model -> Html Msg
mainContent model = 
    if String.length model.token > 0 then
      newMyPage model
    else
    div [wrapper]
      [ div [styleWelcomeText] [
           div [styleNameApp] 
           [  span [headName] [text "Your name is"]
            , span [randomWord] [text (nthItem (model.randomNum) (welcomeWords))]
            , span [headName] [text "?"]
           ]
        ],
        div [buttonsLogin] [
          a [href "#registration" ,btnReg] [ text "Register" ]
        -- a [href "#home" ,(onClick (SaveToken (nthItem (model.randomNum) (welcomeWords))))] [ text "Add token in LS" ]
        ]
      ]



newPage : String -> Html Msg
newPage id = 
      if id == "5" then
        div [] [ text id ]
      else
        if id == "6" then 
           div [] [ text "good!!!!" ]
        else   
      notFoundView



notFoundView : Html Msg
notFoundView =
    div [] [ text "!!!!!!!!!!Not found!!!!!!!!!!!!!!" ]



newMyPage : Model -> Html Msg
newMyPage model =
    div [] [ 
       h2 [styleH2] [text model.token]
      ,a [href "/", onClick LogOut ] [ text "Logout" ]
    ]


welcomeWords : List String
welcomeWords =
    [
        "Maksim",
        "Vika",
        "Evgeniy",
        "Oleg",
        "Ivan",
        "Alexander",
        "Petr",
        "Lusya",
        "Vladislav",
        "Dima",
        "Alena",
        "Andrey",
        "Roman",
        "Elena",
        "Polina",
        "Olga",
        "Vadim",
        "Anonym"
    ]


stringOrEmpty : Maybe String -> String
stringOrEmpty m =
  case m of
    Nothing ->
      "So you gave me an empty list!"
    Just val ->
      val


nthItem : Int -> List String -> String
nthItem randomNum list = 
  list
    |>List.take randomNum
    |>List.reverse
    |>List.head
    |>stringOrEmpty

 

registration model = 
    div []
      [ input [ type_ "text", placeholder "Name", onInput Name ] []
        , input [ type_ "password", placeholder "Password", onInput Password ] []
        , input [ type_ "password", placeholder "Re-enter Password", onInput PasswordAgain ] []
        , button [ onClick (SaveUser) ] [ text "Зарегистрироваться" ]
        , viewValidation model
        , h2 [] [text model.res]
        , h2 [styleH2] [text model.token]
      ]