module Class.Object where
  
import Prelude

import Nemo.Draw.Action (Draw)
import Types (Pos)
  
class Object s where
    size :: s -> Int
    position :: s -> Pos

class Object s <= ObjectDraw s where
    draw :: s -> Draw Unit
