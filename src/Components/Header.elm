module Components.Header exposing (appHeaderView)

import Html exposing (Html, a, div, nav, text)
import Html.Attributes exposing (class, href)
import Types exposing (Msg)


navItem : String -> String -> Html Msg
navItem label url =
    a
        [ class "px-4 py-2 mt-2 md:mt-0 md:ml-4 text-sm font-semibold bg-transparent rounded-lg"
        , class "hover:text-gray-900 focus:text-gray-900 hover:bg-gray-200 focus:bg-gray-200 focus:outline-none focus:shadow-outline"
        , href url
        ]
        [ text label ]


appHeaderView : Html Msg
appHeaderView =
    div []
        [ div [ class "antialiased bg-gray-100 dark-mode:bg-gray-900 shadow" ]
            [ div [ class "w-full text-gray-700 bg-white dark-mode:text-gray-200 dark-mode:bg-gray-800" ]
                [ div [ class "flex flex-col max-w-screen-xl px-4 mx-auto md:items-center md:justify-between md:flex-row md:px-6 lg:px-8" ]
                    [ div [ class "flex flex-row items-center justify-between p-4" ]
                        [ a
                            [ class "text-lg font-semibold tracking-widest text-gray-900 uppercase rounded-lg dark-mode:text-white focus:outline-none focus:shadow-outline"
                            , href "#"
                            ]
                            [ text "dnata Interview Task" ]
                        ]
                    , nav [ class "flex-col flex-grow hidden pb-4 md:pb-0 md:flex md:justify-end md:flex-row" ]
                        [ navItem "Hotels" "#"
                        , navItem "About" "#"
                        , navItem "Contact" "#"
                        ]
                    ]
                ]
            ]
        ]
