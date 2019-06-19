{-| Node IPC module. For details please read the spec:

<https://github.com/input-output-hk/cardano-shell/blob/develop/specs/CardanoShellSpec.pdf>
-}

module Cardano.Shell.NodeIPC
    (-- * Data types
      Port(..)
    , MsgIn(..)
    , MsgOut(..)
    , ReadHandle(..)
    , WriteHandle(..)
     -- * IPC protocol
    , ProtocolDuration (..)
    , startNodeJsIPC
    , startIPC
    , handleIPCProtocol
    , clientIPCListener
    , testStartNodeIPC
    , ServerHandles (..)
    , ClientHandles (..)
    , closeFullDuplexAnonPipesHandles
    , createFullDuplexAnonPipesHandles
    , bracketFullDuplexAnonPipesHandles
    , serverReadWrite
     -- ** Exceptions
    , NodeIPCException(..)
    , MessageSendFailure(..)
    , MessageException(..)
     -- * Used for testing
    , sendMessage
    , readMessage
    , exampleWithFD
    , exampleServerWithProcess
    , getReadWriteHandles
    , getHandleFromEnv
    -- * Predicates
    , isIPCException
    , isHandleClosed
    , isUnreadableHandle
    , isUnwritableHandle
    , isNodeChannelCannotBeFound
    ) where

import           Cardano.Shell.NodeIPC.Lib (ClientHandles (..),
                                            MessageSendFailure (..),
                                            NodeIPCException (..),
                                            Port (..), ProtocolDuration (..),
                                            ServerHandles (..),
                                            bracketFullDuplexAnonPipesHandles,
                                            clientIPCListener,
                                            closeFullDuplexAnonPipesHandles,
                                            createFullDuplexAnonPipesHandles,
                                            isHandleClosed,
                                            isIPCException,
                                            isNodeChannelCannotBeFound,
                                            isUnreadableHandle,
                                            isUnwritableHandle, serverReadWrite,
                                            startIPC, startNodeJsIPC)
import           Cardano.Shell.NodeIPC.Message (MessageException (..),
                                                ReadHandle (..),
                                                WriteHandle (..), readMessage,
                                                sendMessage)
import           Cardano.Shell.NodeIPC.ServerExample (exampleServerWithProcess,
                                                      exampleWithFD,
                                                      getHandleFromEnv,
                                                      getReadWriteHandles)
import Cardano.Shell.NodeIPC.SimplePortServer
