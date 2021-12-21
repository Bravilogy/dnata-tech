module Types exposing (..)

import Http


type alias HotelListing =
    { id : Int
    , img : String
    , title : String
    , star_rating : Int
    , description : String
    , user_rating : Float
    , total_reviews : Int
    , features : List String
    , total_price : Int
    , pp_price : Int
    , details : String
    }


type alias Model =
    { error : Maybe String
    , loading : Bool
    , hotelListings : List HotelListing
    }


type alias Flags =
    {}


type Msg
    = GotHotelListings (Result Http.Error (List HotelListing))
    | TryAgain
