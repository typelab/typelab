module Main exposing (main)
import Html exposing (Html, div, text)

import Browser
main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

type alias Model =
    { title : String
    }

init : () -> ( Model, Cmd Msg )
init _ =
    ( { title = ""}, Cmd.none )

type Msg
    = NoOp

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
    
        _ ->
            ( model, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

type alias Document msg =
    { title : String
    , body : List (Html msg)
    }


view : Model -> Document Msg
view model =
    { title = model.title
    , body =
        [ div [ ] [ ]
        ]
    }