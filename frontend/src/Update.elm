module Update exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Services.HttpReq exposing (..)
import Routing exposing (..)
import Ports.LocalStorage as LocalStorage


-- UPDATE
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    LocationChange location ->
      let
        newRoute =
            Routing.parseLocation location
      in
      
      if newRoute == Models.MyRoute then
         ( { model | route = newRoute }, getText)
      else 
        ( { model | route = newRoute }, Cmd.none )

    Name name ->
      ({ model | name = name }, Cmd.none)

    Password password ->
      ({ model | password = password }, Cmd.none)

    PasswordAgain password ->
      ({ model | passwordAgain = password }, Cmd.none)

    GetSomething ->
      (model, getText)

    NewText (Ok text) ->
      ({ model | res = text }, Cmd.none)

    NewText (Err _) ->
      (model, Cmd.none)

    ResultCreatedNewUser (Ok text) ->
      ({ model | token = text }, LocalStorage.storageSetItem ("token", text))

    ResultCreatedNewUser (Err _) ->
      (model, Cmd.none)  

    -- SaveToken token ->
    --   ( { model | token = token }
    --   , LocalStorage.storageSetItem ("token", token)
    --   )

    LogOut ->
      ( { model | token = "" }
      , LocalStorage.storageRemoveItem "token"
      )

    SaveUser ->
      (model , saveUser model)