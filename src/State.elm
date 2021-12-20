module State exposing (init, subscriptions, update)

import Api exposing (getHotelListings)
import Types exposing (Flags, Model, Msg(..))


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( { hotelListings = []
      , error = Nothing
      , loading = True
      }
    , getHotelListings
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotHotelListings (Ok listings) ->
            ( { model
                | hotelListings = listings
                , loading = False
                , error = Nothing
              }
            , getHotelListings
            )

        GotHotelListings (Err _) ->
            ( { model
                | error = Just "Could not fetch hotel listings"
                , loading = False
              }
            , Cmd.none
            )

        TryAgain ->
            ( { model
                | loading = True
                , error = Nothing
              }
            , getHotelListings
            )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
