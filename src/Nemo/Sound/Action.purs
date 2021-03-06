module Nemo.Sound.Action where

import Prelude

import Control.Monad.Free (Free, liftF)
import Nemo.Data.Tone (Tone)
import Nemo.Types (Bpm, SoundId)

type Sound = Free SoundF

data SoundF n
    = HaltAll n
    | Play SoundId Tone Bpm n

-- | Halt all sound.
haltall :: Sound Unit
haltall = liftF $ HaltAll unit

-- | Play sound with given tone and bpm.
play :: SoundId -> Tone -> Bpm -> Sound Unit
play sId tone tempo = liftF $ Play sId tone tempo unit
