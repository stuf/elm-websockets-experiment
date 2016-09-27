module Types exposing
    ( SocketAction
    , socketActionDecoder
    )

{-|

# WebSockets
@docs SocketAction, socketActionDecoder

-}

import Json.Decode exposing (Decoder, decodeString, decodeValue, string)
import Json.Decode.Pipeline exposing (decode, required, nullable)


{-|-}
type alias SocketAction =
    { action : String
    , payload : Maybe String
    }


socketActionDecoder : Decoder SocketAction
socketActionDecoder =
    decode SocketAction
        |> required "action" string
        |> required "payload" (nullable string)



