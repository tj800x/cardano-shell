module Main where

import           Cardano.Prelude

import           Test.Hspec (describe, hspec)

import qualified DaedalusIPCSpec as DaedalusIPC
import           NodeIPCSMSpec (nodeIPCSMSpec)
import           NodeIPCSpec (nodeIPCSpec)

-- | Entry point for tests.
main :: IO ()
main = hspec $ do
    describe "NodeIPC state machine" nodeIPCSMSpec
    describe "NodeIPC" nodeIPCSpec
    describe "DaedalusIPC" DaedalusIPC.spec

