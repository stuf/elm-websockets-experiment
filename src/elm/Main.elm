module Main exposing (main)

import Html.App as Html
import State exposing (State, init, model, update)
import View exposing (rootView)
import Subscriptions exposing (subscriptions)


main : Program Never
main =
    Html.program
        { init = init
        , view = rootView
        , update = update
        , subscriptions = subscriptions
        }

