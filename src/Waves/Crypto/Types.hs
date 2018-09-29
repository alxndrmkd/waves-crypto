{-# LANGUAGE TypeSynonymInstances #-}

module Waves.Crypto.Types where

import qualified Crypto.Elliptics.Curve25519 as C
import           Waves.Crypto.Base

-------------------------------------------------

type Signature = C.Signature

signature = C.signature

signatureBytes = C.signatureBytes

-------------------------------------------------

type PublicKey = C.PublicKey

publicKey = C.publicKey

publicKeyBytes = C.publicKeyBytes

type PrivateKey = C.PrivateKey

privateKey = C.privateKey

privateKeyBytes = C.privateKeyBytes
-------------------------------------------------

type KeyPair = C.KeyPair

-------------------------------------------------
instance Show Signature where
  show = show . encode58 . signatureBytes

instance Show PublicKey where
  show = show . encode58 . publicKeyBytes

instance Show PrivateKey where
  show = show . encode58 . privateKeyBytes
