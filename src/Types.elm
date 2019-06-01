module Types exposing (Argument, TypeDetail)


type alias TypeDetail =
    { name : String
    }


type alias Argument =
    { name : Maybe String
    , postion : Int
    , typeDtl : TypeDetail
    }


type FunctionName
    = Anonymous
    | Name String


type alias FunctionSignature =
    { name : FunctionName
    , arguments : List Argument
    , returnType : TypeDetail
    }
