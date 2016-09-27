module State exposing
    ( State
    , Msg(..)
    , init
    , model
    , update
    )

import Json.Decode exposing (decodeString)
import Types exposing (socketActionDecoder)


type alias State =
    { queue : List String
    , input : String 
    }


model : State
model =
    { queue = [ "FF2r7mnf180", "011VxCDoO0o" ]
    , input = ""
    }


init : ( State, Cmd a )
init = ( model, Cmd.none )


type Msg
    = NoOp
    | SocketMessage String
    | Input String


{-| The main state updating function
-}
update : Msg -> State -> ( State, Cmd Msg )
update msg state =
    case msg of
        NoOp ->
            state ! []

        Input a ->
            { state | input = state.input } ! []

        SocketMessage msg ->
            let payload' = decodeString socketActionDecoder msg
            in case payload' of
                Ok result ->
                    case result.action of
                        _ -> ( model, Cmd.none )

                Err error ->
                    ( model, Cmd.none )

