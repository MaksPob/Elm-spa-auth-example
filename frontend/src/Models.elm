module Models exposing (..)


-- MODEL
type alias Model =
  { name : String
  , password : String
  , passwordAgain : String
  , res : String
  , route : Route
  , token: String
  , randomNum: Int
  }


type alias Flags =
  { token : String,
    randomNumWord: Int
  }


type alias ManId =
    String


type Route
    = PostsRoute
    | PostRoute ManId
    | NotFoundRoute
    | MyRoute
    | Registration


initialModel : Flags -> Route -> Model
initialModel flags route =
    {  name = ""
    , password = ""
    , passwordAgain = ""
    , res = ""
    , route = route
    , token = flags.token
    , randomNum = flags.randomNumWord
    }