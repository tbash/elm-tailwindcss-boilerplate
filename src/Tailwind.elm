module Tailwind exposing (UtilClass(..), utilClass, utilClassList, utilClasses)

import Html exposing (Attribute)
import Html.Attributes exposing (class, classList)


type UtilClass
    = Flex
    | JustifyCenter
    | FlexCol
    | ItemsCenter
    | W64


utilClasses : List UtilClass -> Attribute msg
utilClasses =
    classList << List.map (\s -> ( toClass s, True ))


utilClassList : List ( UtilClass, Bool ) -> Attribute msg
utilClassList =
    classList << List.map (Tuple.mapFirst toClass)


utilClass : UtilClass -> Attribute msg
utilClass =
    class << toClass


toClass : UtilClass -> String
toClass util =
    case util of
        Flex ->
            "flex"

        JustifyCenter ->
            "justify-center"

        FlexCol ->
            "flex-col"

        ItemsCenter ->
            "items-center"

        W64 ->
            "w-64"
