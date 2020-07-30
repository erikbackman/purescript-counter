module Component.Counter where

import Prelude
import Data.Maybe (Maybe(..))
import Halogen (Component, defaultEval, mkComponent, mkEval, modify_)
import Halogen.HTML (HTML, div_, p_, button, text)
import Halogen.HTML.Events (onClick)

data Action
  = Increment
  | Decrement

component :: forall q i o m. Component HTML q i o m
component =
  mkComponent
    { initialState: const 0
    , render: render
    , eval:
        mkEval
          defaultEval
            { handleAction = handleAction
            }
    }
  where
  render state =
    div_
      [ p_
          [ button [ onClick \_ -> Just Decrement ] [ text "-" ]
          , text (show state)
          , button [ onClick \_ -> Just Increment ] [ text "+" ]
          ]
      ]

  handleAction = case _ of
    Decrement -> modify_ (_ - 1)
    Increment -> modify_ (_ + 1)
