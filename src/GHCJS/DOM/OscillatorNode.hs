{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OscillatorNode
       (ghcjs_dom_oscillator_node_start, oscillatorNodeStart,
        ghcjs_dom_oscillator_node_stop, oscillatorNodeStop,
        ghcjs_dom_oscillator_node_note_on, oscillatorNodeNoteOn,
        ghcjs_dom_oscillator_node_note_off, oscillatorNodeNoteOff,
        ghcjs_dom_oscillator_node_set_periodic_wave,
        oscillatorNodeSetPeriodicWave, cSINE, cSQUARE, cSAWTOOTH,
        cTRIANGLE, cCUSTOM, cUNSCHEDULED_STATE, cSCHEDULED_STATE,
        cPLAYING_STATE, cFINISHED_STATE,
        ghcjs_dom_oscillator_node_get_playback_state,
        oscillatorNodeGetPlaybackState,
        ghcjs_dom_oscillator_node_get_frequency,
        oscillatorNodeGetFrequency, ghcjs_dom_oscillator_node_get_detune,
        oscillatorNodeGetDetune, oscillatorNodeOnended, OscillatorNode,
        IsOscillatorNode, castToOscillatorNode, gTypeOscillatorNode,
        toOscillatorNode)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"start\"]($2)"
        ghcjs_dom_oscillator_node_start ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.start Mozilla OscillatorNode.start documentation> 
oscillatorNodeStart ::
                    (IsOscillatorNode self) => self -> Double -> IO ()
oscillatorNodeStart self when
  = ghcjs_dom_oscillator_node_start
      (unOscillatorNode (toOscillatorNode self))
      when
 
foreign import javascript unsafe "$1[\"stop\"]($2)"
        ghcjs_dom_oscillator_node_stop ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.stop Mozilla OscillatorNode.stop documentation> 
oscillatorNodeStop ::
                   (IsOscillatorNode self) => self -> Double -> IO ()
oscillatorNodeStop self when
  = ghcjs_dom_oscillator_node_stop
      (unOscillatorNode (toOscillatorNode self))
      when
 
foreign import javascript unsafe "$1[\"noteOn\"]($2)"
        ghcjs_dom_oscillator_node_note_on ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOn Mozilla OscillatorNode.noteOn documentation> 
oscillatorNodeNoteOn ::
                     (IsOscillatorNode self) => self -> Double -> IO ()
oscillatorNodeNoteOn self when
  = ghcjs_dom_oscillator_node_note_on
      (unOscillatorNode (toOscillatorNode self))
      when
 
foreign import javascript unsafe "$1[\"noteOff\"]($2)"
        ghcjs_dom_oscillator_node_note_off ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOff Mozilla OscillatorNode.noteOff documentation> 
oscillatorNodeNoteOff ::
                      (IsOscillatorNode self) => self -> Double -> IO ()
oscillatorNodeNoteOff self when
  = ghcjs_dom_oscillator_node_note_off
      (unOscillatorNode (toOscillatorNode self))
      when
 
foreign import javascript unsafe "$1[\"setPeriodicWave\"]($2)"
        ghcjs_dom_oscillator_node_set_periodic_wave ::
        JSRef OscillatorNode -> JSRef PeriodicWave -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.periodicWave Mozilla OscillatorNode.periodicWave documentation> 
oscillatorNodeSetPeriodicWave ::
                              (IsOscillatorNode self, IsPeriodicWave wave) =>
                                self -> Maybe wave -> IO ()
oscillatorNodeSetPeriodicWave self wave
  = ghcjs_dom_oscillator_node_set_periodic_wave
      (unOscillatorNode (toOscillatorNode self))
      (maybe jsNull (unPeriodicWave . toPeriodicWave) wave)
cSINE = 0
cSQUARE = 1
cSAWTOOTH = 2
cTRIANGLE = 3
cCUSTOM = 4
cUNSCHEDULED_STATE = 0
cSCHEDULED_STATE = 1
cPLAYING_STATE = 2
cFINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        ghcjs_dom_oscillator_node_get_playback_state ::
        JSRef OscillatorNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.playbackState Mozilla OscillatorNode.playbackState documentation> 
oscillatorNodeGetPlaybackState ::
                               (IsOscillatorNode self) => self -> IO Word
oscillatorNodeGetPlaybackState self
  = ghcjs_dom_oscillator_node_get_playback_state
      (unOscillatorNode (toOscillatorNode self))
 
foreign import javascript unsafe "$1[\"frequency\"]"
        ghcjs_dom_oscillator_node_get_frequency ::
        JSRef OscillatorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.frequency Mozilla OscillatorNode.frequency documentation> 
oscillatorNodeGetFrequency ::
                           (IsOscillatorNode self) => self -> IO (Maybe AudioParam)
oscillatorNodeGetFrequency self
  = (ghcjs_dom_oscillator_node_get_frequency
       (unOscillatorNode (toOscillatorNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"detune\"]"
        ghcjs_dom_oscillator_node_get_detune ::
        JSRef OscillatorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.detune Mozilla OscillatorNode.detune documentation> 
oscillatorNodeGetDetune ::
                        (IsOscillatorNode self) => self -> IO (Maybe AudioParam)
oscillatorNodeGetDetune self
  = (ghcjs_dom_oscillator_node_get_detune
       (unOscillatorNode (toOscillatorNode self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.onended Mozilla OscillatorNode.onended documentation> 
oscillatorNodeOnended ::
                      (IsOscillatorNode self) => Signal self (EventM UIEvent self ())
oscillatorNodeOnended = (connect "ended")
#else
module GHCJS.DOM.OscillatorNode (
  ) where
#endif