module Components.Card exposing (cardView)

import Components.Icons exposing (bellIcon, cashIcon, emptyStarIcon, fullStarIcon, happyFaceIcon, sadFaceIcon)
import Html exposing (Html, a, div, footer, h2, header, hr, img, li, p, section, span, strong, text, ul)
import Html.Attributes exposing (class, href, src, style, target)
import Types exposing (HotelListing, Msg)


star : Bool -> Html Msg
star isEmpty =
    li [ class "w-4 h-4 text-yellow-300" ]
        [ if isEmpty then
            emptyStarIcon

          else
            fullStarIcon
        ]


starRatingsView : Int -> Html Msg
starRatingsView rating =
    let
        fullStars =
            List.map
                (\_ -> star False)
                (List.range 1 rating)

        fullStarsLength =
            List.length fullStars

        withExtraStars =
            if fullStarsLength < 5 then
                List.concat
                    [ fullStars
                    , List.map
                        (\_ -> star True)
                        (List.range 1 (5 - fullStarsLength))
                    ]

            else
                fullStars
    in
    div []
        [ ul [ class "flex mt-2 mb-1" ] withExtraStars ]


userRatingsView : Float -> Int -> Html Msg
userRatingsView userRating totalReviews =
    let
        smileyFace =
            if userRating > 5.7 then
                happyFaceIcon

            else
                sadFaceIcon

        userRatingColor =
            if userRating > 5.7 then
                "blue-400"

            else
                "yellow-400"
    in
    div [ class "my-3 flex items-center space-x-2" ]
        [ div
            [ class "text-white font-bold text-sm px-2 p-1"
            , class ("bg-" ++ userRatingColor)
            ]
            [ text (String.fromFloat userRating) ]
        , div
            [ class "w-6 h-6"
            , class ("text-" ++ userRatingColor)
            ]
            [ smileyFace ]
        , div
            [ class "text-sm"
            , class ("text-" ++ userRatingColor)
            ]
            [ text ("(based on " ++ String.fromInt totalReviews ++ " reviews)") ]
        ]


featureView : String -> Html Msg
featureView feature =
    let
        ( icon, label ) =
            case feature of
                "room_only" ->
                    ( bellIcon, "Room Only" )

                "local_charges" ->
                    ( cashIcon, "Local charges Payable at hotel" )

                _ ->
                    ( text "", "" )
    in
    li [ class "flex items-center space-x-2" ]
        [ div [ class "w-4 h-4" ] [ icon ]
        , span [] [ text label ]
        ]


cardView : HotelListing -> Html Msg
cardView hotel =
    div [ class "w-full flex flex-col bg-white rounded p-1" ]
        [ header [ class "h-48 overflow-hidden" ]
            [ img
                [ class "object-contain w-full"
                , src hotel.img
                ]
                []
            ]
        , section [ class "p-4 flex-1 border-l-2 border-r-2 border-gray-200" ]
            [ h2 [ class "font-semibold text-blue-900 text-lg" ] [ text hotel.title ]
            , starRatingsView hotel.star_rating
            , p [ class "text-sm h-10" ] [ text hotel.description ]
            , userRatingsView hotel.user_rating hotel.total_reviews
            , hr [ class "my-5" ] []
            , div [ class "text-gray-500 text-sm space-y-3" ]
                [ p [ class "italic" ] [ text "Price includes" ]
                , ul [ class "space-y-2" ] (List.map featureView hotel.features)
                ]
            ]
        , footer
            [ class "bg-gray-50 border-gray-200 p-4 flex items-center justify-between"
            , style "border-top" "2px dotted rgba(229,231,235,var(--tw-border-opacity))"
            , style "border-left" "2px solid rgba(229,231,235,var(--tw-border-opacity))"
            , style "border-right" "2px solid rgba(229,231,235,var(--tw-border-opacity))"
            , style "border-bottom" "2px solid rgba(229,231,235,var(--tw-border-opacity))"
            ]
            [ div [ class "text-xs" ]
                [ div [] [ text "Total price from" ]
                , div [ class "text-yellow-500 font-bold text-xl" ]
                    [ text ("£" ++ String.fromInt hotel.total_price) ]
                , div []
                    [ text "(Per person "
                    , strong [] [ "£" ++ String.fromInt hotel.pp_price |> text ]
                    , text ")"
                    ]
                ]
            , a
                [ href hotel.details
                , target "_blank"
                , class "bg-yellow-500 text-white font-bold py-2 px-3 hover:bg-yellow-600"
                ]
                [ text "View more" ]
            ]
        ]
