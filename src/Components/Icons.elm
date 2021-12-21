module Components.Icons exposing (..)

import Html exposing (Html, node, text)
import Html.Attributes exposing (attribute, type_)
import Svg exposing (g, path, svg)
import Svg.Attributes exposing (d, fill, viewBox)
import Types exposing (Msg)


loadingIcon : Html Msg
loadingIcon =
    svg [ attribute "height" "38", attribute "stroke" "#000", viewBox "0 0 38 38", attribute "width" "38", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ g [ fill "none", attribute "fill-rule" "evenodd" ]
            [ g [ attribute "stroke-width" "2", attribute "transform" "translate(1 1)" ]
                [ node "circle"
                    [ attribute "cx" "18", attribute "cy" "18", attribute "r" "18", attribute "stroke-opacity" ".5" ]
                    []
                , path [ d "M36 18c0-9.94-8.06-18-18-18" ]
                    [ node "animateTransform"
                        [ attribute "attributeName" "transform"
                        , attribute "dur" "1s"
                        , attribute "from" "0 18 18"
                        , attribute "repeatCount" "indefinite"
                        , attribute "to" "360 18 18"
                        , type_ "rotate"
                        ]
                        []
                    , text "            "
                    ]
                ]
            ]
        ]


fullStarIcon : Html Msg
fullStarIcon =
    svg
        [ fill "currentColor"
        , viewBox "0 0 20 20"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path [ d "M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" ]
            []
        , text ""
        ]


emptyStarIcon : Html Msg
emptyStarIcon =
    svg
        [ fill "none"
        , attribute "stroke" "currentColor"
        , viewBox "0 0 24 24"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path
            [ d "M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z"
            , attribute "stroke-linecap" "round"
            , attribute "stroke-linejoin" "round"
            , attribute "stroke-width" "2"
            ]
            []
        , text ""
        ]


happyFaceIcon : Html Msg
happyFaceIcon =
    svg
        [ fill "none"
        , attribute "stroke" "currentColor"
        , viewBox "0 0 24 24"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path
            [ d "M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
            , attribute "stroke-linecap" "round"
            , attribute "stroke-linejoin" "round"
            , attribute "stroke-width" "2"
            ]
            []
        , text ""
        ]


sadFaceIcon : Html Msg
sadFaceIcon =
    svg
        [ fill "none"
        , attribute "stroke" "currentColor"
        , viewBox "0 0 24 24"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path
            [ d "M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
            , attribute "stroke-linecap" "round"
            , attribute "stroke-linejoin" "round"
            , attribute "stroke-width" "2"
            ]
            []
        , text ""
        ]


cashIcon : Html Msg
cashIcon =
    svg
        [ fill "none"
        , attribute "stroke" "currentColor"
        , viewBox "0 0 24 24"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path
            [ d "M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
            , attribute "stroke-linecap" "round"
            , attribute "stroke-linejoin" "round"
            , attribute "stroke-width" "2"
            ]
            []
        , text ""
        ]


bellIcon : Html Msg
bellIcon =
    svg
        [ fill "none"
        , attribute "stroke" "currentColor"
        , viewBox "0 0 24 24"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path
            [ d "M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"
            , attribute "stroke-linecap" "round"
            , attribute "stroke-linejoin" "round"
            , attribute "stroke-width" "2"
            ]
            []
        , text ""
        ]
