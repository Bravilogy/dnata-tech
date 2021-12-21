module Api exposing (getHotelListings)

import Http
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (required)
import Types exposing (HotelListing, Msg(..))



-- Decoders


hotelListingDecoder : Decoder HotelListing
hotelListingDecoder =
    Decode.succeed HotelListing
        |> required "id" Decode.int
        |> required "img" Decode.string
        |> required "title" Decode.string
        |> required "star_rating" Decode.int
        |> required "description" Decode.string
        |> required "user_rating" Decode.float
        |> required "total_reviews" Decode.int
        |> required "features" (Decode.list Decode.string)
        |> required "total_price" Decode.int
        |> required "pp_price" Decode.int
        |> required "details" Decode.string


hotelListingsDecoder : Decoder (List HotelListing)
hotelListingsDecoder =
    Decode.list hotelListingDecoder



-- API Requests


getApiUrl : String -> String
getApiUrl path =
    "http://localhost:3000/" ++ path


getHotelListings : Cmd Msg
getHotelListings =
    Http.get
        { url = getApiUrl "hotels"
        , expect = Http.expectJson GotHotelListings hotelListingsDecoder
        }
