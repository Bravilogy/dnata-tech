module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import State exposing (init, subscriptions, update)
import Types exposing (Flags, Model, Msg)


main : Program Flags Model Msg
main =
    Browser.element { init = init, view = view, update = update, subscriptions = subscriptions }


view : Model -> Html Msg
view model =
    div [] [ text "Hello world" ]
