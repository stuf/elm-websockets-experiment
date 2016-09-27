module Messages
    exposing
        (..)


import Json.Decode
import Result


type Action
    = Add String


type alias Message =
    { action : Action
    , payload : String
    }


type alias State =
    { queue : List String
    }


init : State
init =
    { queue = []
    }


whichMessage : Action -> State -> ( State, Cmd a )
whichMessage action { queue } =
    case action of
        Add url ->
            ( { queue = url :: queue }, Cmd.none )


handleMessage : Result -> State -> ( State, Cmd a )
handleMessage msg state = ( state, Cmd.none )


