module Components.Card exposing (cardView)

import Components.Icons exposing (emptyStarIcon, fullStarIcon)
import Html exposing (Html, div, footer, h2, header, img, li, section, text, ul)
import Html.Attributes exposing (class, src)
import Types exposing (HotelListing, Msg)


fullStarView : Html Msg
fullStarView =
    li [ class "w-4 h-4 text-yellow-300" ]
        [ fullStarIcon ]


emptyStarView : Html Msg
emptyStarView =
    li [ class "w-4 h-4 text-transparent" ] [ emptyStarIcon ]


starRatingsView : Int -> Html Msg
starRatingsView rating =
    let
        fullStars =
            List.map
                (\_ -> fullStarView)
                (List.range 1 rating)

        fullStarsLength =
            List.length fullStars

        withExtraStars =
            if fullStarsLength < 5 then
                fullStars
                    ++ List.map (\_ -> emptyStarView)
                        (List.range 1 (5 - fullStarsLength))

            else
                fullStars
    in
    ul [ class "flex" ] withExtraStars


cardView : HotelListing -> Html Msg
cardView hotel =
    div [ class "w-full bg-white rounded p-1" ]
        [ header [ class "h-48 overflow-hidden" ]
            [ img
                [ class "object-contain w-full"
                , src hotel.img
                ]
                []
            ]
        , section [ class "p-4" ]
            [ h2 [ class "font-semibold text-blue-900 text-lg" ] [ text hotel.title ]
            , starRatingsView hotel.star_rating
            ]
        , footer [] []
        ]
