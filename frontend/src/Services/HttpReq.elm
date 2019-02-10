module Services.HttpReq exposing (..)

import Http
import Json.Decode as Decode
import Json.Encode as Encode
import Msgs exposing (..)
import Models exposing (Model)


-- HTTP
getText : Cmd Msg
getText =
  let
    url =
      "http://localhost:9000/home"
  in
    Http.send NewText (Http.get url decodeText)



decodeText : Decode.Decoder String
decodeText =
  Decode.at ["responseText"] Decode.string




loginEncoded : Model -> Encode.Value
loginEncoded model =
    let
        list =
            [ ( "login", Encode.string model.name )
            , ( "password", Encode.string model.password )
            ]
    in
        list
            |> Encode.object



-- saveUser : Model -> Cmd Msg
-- saveUser model =
--   let
--     url =
--       "http://localhost:9000/registration"
--   in
--     Http.send ResultCreatedNewUser (Http.post url loginEncoded model)            

saveUser : Model -> Cmd Msg
saveUser model =
    let
        req = Http.post "http://localhost:9000/registration" ( Http.jsonBody <| loginEncoded model ) decoderToken
    in
        Http.send ResultCreatedNewUser req

decoderToken : Decode.Decoder String
decoderToken = Decode.field "token" Decode.string