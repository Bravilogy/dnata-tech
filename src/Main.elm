module Main exposing (main)

import Browser
import Html exposing (Html, div, text)


main : Program Flags Model Msg
main =
    Browser.element { init = init, view = view, update = update, subscriptions = subscriptions }


type alias Model =
    {}


type alias Flags =
    {}


type Msg
    = Msg


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [] [ text "Hello world" ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
