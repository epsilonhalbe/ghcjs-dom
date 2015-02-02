{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Touch
       (ghcjs_dom_touch_get_client_x, touchGetClientX,
        ghcjs_dom_touch_get_client_y, touchGetClientY,
        ghcjs_dom_touch_get_screen_x, touchGetScreenX,
        ghcjs_dom_touch_get_screen_y, touchGetScreenY,
        ghcjs_dom_touch_get_page_x, touchGetPageX,
        ghcjs_dom_touch_get_page_y, touchGetPageY,
        ghcjs_dom_touch_get_target, touchGetTarget,
        ghcjs_dom_touch_get_identifier, touchGetIdentifier,
        ghcjs_dom_touch_get_webkit_radius_x, touchGetWebkitRadiusX,
        ghcjs_dom_touch_get_webkit_radius_y, touchGetWebkitRadiusY,
        ghcjs_dom_touch_get_webkit_rotation_angle,
        touchGetWebkitRotationAngle, ghcjs_dom_touch_get_webkit_force,
        touchGetWebkitForce, Touch(..), IsTouch, castToTouch, gTypeTouch,
        toTouch)
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

 
foreign import javascript unsafe "$1[\"clientX\"]"
        ghcjs_dom_touch_get_client_x :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientX Mozilla Touch.clientX documentation> 
touchGetClientX :: (IsTouch self) => self -> IO Int
touchGetClientX self
  = ghcjs_dom_touch_get_client_x (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"clientY\"]"
        ghcjs_dom_touch_get_client_y :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientY Mozilla Touch.clientY documentation> 
touchGetClientY :: (IsTouch self) => self -> IO Int
touchGetClientY self
  = ghcjs_dom_touch_get_client_y (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"screenX\"]"
        ghcjs_dom_touch_get_screen_x :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenX Mozilla Touch.screenX documentation> 
touchGetScreenX :: (IsTouch self) => self -> IO Int
touchGetScreenX self
  = ghcjs_dom_touch_get_screen_x (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"screenY\"]"
        ghcjs_dom_touch_get_screen_y :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenY Mozilla Touch.screenY documentation> 
touchGetScreenY :: (IsTouch self) => self -> IO Int
touchGetScreenY self
  = ghcjs_dom_touch_get_screen_y (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"pageX\"]"
        ghcjs_dom_touch_get_page_x :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageX Mozilla Touch.pageX documentation> 
touchGetPageX :: (IsTouch self) => self -> IO Int
touchGetPageX self
  = ghcjs_dom_touch_get_page_x (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"pageY\"]"
        ghcjs_dom_touch_get_page_y :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageY Mozilla Touch.pageY documentation> 
touchGetPageY :: (IsTouch self) => self -> IO Int
touchGetPageY self
  = ghcjs_dom_touch_get_page_y (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_touch_get_target :: JSRef Touch -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.target Mozilla Touch.target documentation> 
touchGetTarget :: (IsTouch self) => self -> IO (Maybe EventTarget)
touchGetTarget self
  = (ghcjs_dom_touch_get_target (unTouch (toTouch self))) >>=
      fromJSRef
 
foreign import javascript unsafe "$1[\"identifier\"]"
        ghcjs_dom_touch_get_identifier :: JSRef Touch -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.identifier Mozilla Touch.identifier documentation> 
touchGetIdentifier :: (IsTouch self) => self -> IO Word
touchGetIdentifier self
  = ghcjs_dom_touch_get_identifier (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"webkitRadiusX\"]"
        ghcjs_dom_touch_get_webkit_radius_x :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusX Mozilla Touch.webkitRadiusX documentation> 
touchGetWebkitRadiusX :: (IsTouch self) => self -> IO Int
touchGetWebkitRadiusX self
  = ghcjs_dom_touch_get_webkit_radius_x (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"webkitRadiusY\"]"
        ghcjs_dom_touch_get_webkit_radius_y :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusY Mozilla Touch.webkitRadiusY documentation> 
touchGetWebkitRadiusY :: (IsTouch self) => self -> IO Int
touchGetWebkitRadiusY self
  = ghcjs_dom_touch_get_webkit_radius_y (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"webkitRotationAngle\"]"
        ghcjs_dom_touch_get_webkit_rotation_angle ::
        JSRef Touch -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRotationAngle Mozilla Touch.webkitRotationAngle documentation> 
touchGetWebkitRotationAngle :: (IsTouch self) => self -> IO Float
touchGetWebkitRotationAngle self
  = ghcjs_dom_touch_get_webkit_rotation_angle
      (unTouch (toTouch self))
 
foreign import javascript unsafe "$1[\"webkitForce\"]"
        ghcjs_dom_touch_get_webkit_force :: JSRef Touch -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitForce Mozilla Touch.webkitForce documentation> 
touchGetWebkitForce :: (IsTouch self) => self -> IO Float
touchGetWebkitForce self
  = ghcjs_dom_touch_get_webkit_force (unTouch (toTouch self))
#else
module GHCJS.DOM.Touch (
  ) where
#endif
