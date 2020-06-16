{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-halogen-project"
, dependencies =
  [ "console"
  , "debug"
  , "effect"
  , "generics-rep"
  , "halogen"
  , "halogen-css"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
