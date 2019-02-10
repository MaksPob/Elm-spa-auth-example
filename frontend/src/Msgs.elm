module Msgs exposing (..)

import Http
import Navigation exposing(..)

-- MESSAGES
type Msg
    = Name String
    | Password String
    | PasswordAgain String
    | GetSomething
    | NewText (Result Http.Error String)
    | ResultCreatedNewUser (Result Http.Error String)
    | LocationChange Location
    -- | SaveToken String
    | LogOut
    | SaveUser
