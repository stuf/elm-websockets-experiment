module Subscriptions exposing (subscriptions)

import WebSocket
import State exposing (State, Msg(..))
import Config exposing (webSocketHost)


subscriptions : State -> Sub Msg
subscriptions model =
    WebSocket.listen webSocketHost SocketMessage

