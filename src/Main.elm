module Main exposing (main)

import Browser
import Components.Card exposing (cardView)
import Components.Header exposing (appHeaderView)
import Components.Icons exposing (loadingIcon)
import Html exposing (Html, button, div, section, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import State exposing (init, subscriptions, update)
import Types exposing (Flags, Model, Msg(..))


main : Program Flags Model Msg
main =
    Browser.element { init = init, view = view, update = update, subscriptions = subscriptions }


errorPanel : Maybe String -> Html Msg
errorPanel error =
    case error of
        Nothing ->
            text ""

        Just msg ->
            div [ class "rounded bg-red-200 p-3 text-sm border border-red-400 text-red-800" ]
                [ text msg
                , button [ class "font-bold ml-1", onClick TryAgain ] [ text "Click here to try again." ]
                ]


view : Model -> Html Msg
view model =
    div [ class "min-h-full flex flex-col" ]
        [ appHeaderView
        , if model.loading then
            div [ class "flex-1 flex items-center justify-center" ] [ loadingIcon ]

          else
            section [ class "max-w-7xl w-full mx-auto py-5" ]
                [ errorPanel model.error
                , div [ class "grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 px-3 lg:px-0" ]
                    (List.map cardView model.hotelListings)
                ]
        ]
