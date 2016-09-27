module View exposing (rootView)

import Html exposing (..)
import Html.Attributes exposing (class)
import State exposing (State)
import List exposing (map)


-----------------------------
-- ROOT VIEW
-----------------------------

rootView : State -> Html a
rootView state = 
    div
        [ class "container" ]
        [ div [ class "queue-list" ]
            [ viewQueue state.queue
            ]
        ]
    

-----------------------------
-- LIST
-----------------------------

-- Queue

viewQueue : List String -> Html a
viewQueue msgs =
    ul [ class "list-group" ]
        <| map viewQueueItem msgs


viewQueueItem : String -> Html a
viewQueueItem msg =
    li [ class "list-group-item" ]
        [ text msg ]

