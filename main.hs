{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

import Data.Monoid (mconcat)

main = scotty 3000 $ do
  get "/echo/:input" $ do
    message <- param "input"
    html $ mconcat ["<h1>Hello ", message , "</h1>"]
