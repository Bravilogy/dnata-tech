module Components.Icons exposing (emptyStarIcon, fullStarIcon, loadingIcon)

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
                        [ attribute "attributeName" "transform", attribute "dur" "1s", attribute "from" "0 18 18", attribute "repeatCount" "indefinite", attribute "to" "360 18 18", type_ "rotate" ]
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
        [ fill "transparent"
        , viewBox "0 0 20 20"
        , attribute "xmlns" "http://www.w3.org/2000/svg"
        ]
        [ path [ d "M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" ]
            []
        , text ""
        ]
