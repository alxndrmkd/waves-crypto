{-# LANGUAGE StandaloneDeriving   #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Waves.Crypto.Types where

import qualified Crypto.Elliptics.Curve25519 as C
import           Waves.Crypto.Base

-------------------------------------------------

type Signature = C.Signature

signature = C.signature

signatureBytes = C.signatureBytes

instance Show Signature where
  show = show . encode58 . signatureBytes

instance Eq Signature where
  (==) s1 s2 = signatureBytes s1 == signatureBytes s2

instance Ord Signature where
  compare s1 s2 = signatureBytes s1 `compare` signatureBytes s2

-------------------------------------------------

type PublicKey = C.PublicKey

publicKey = C.publicKey

publicKeyBytes = C.publicKeyBytes

instance Show PublicKey where
  show = show . encode58 . publicKeyBytes

instance Eq PublicKey where
  (==) pk1 pk2 = publicKeyBytes pk1 == publicKeyBytes pk2

instance Ord PublicKey where
  compare pk1 pk2 = publicKeyBytes pk1 `compare` publicKeyBytes pk2

-------------------------------------------------

type PrivateKey = C.PrivateKey

privateKey = C.privateKey

privateKeyBytes = C.privateKeyBytes

instance Show PrivateKey where
  show = show . encode58 . privateKeyBytes

instance Eq PrivateKey where
  (==) pk1 pk2 = privateKeyBytes pk1 == privateKeyBytes pk2

instance Ord PrivateKey where
  compare pk1 pk2 = privateKeyBytes pk1 `compare` privateKeyBytes pk2

-------------------------------------------------

type KeyPair = C.KeyPair

-------------------------------------------------
