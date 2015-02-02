{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRectElement
       (ghcjs_dom_svg_rect_element_get_x, svgRectElementGetX,
        ghcjs_dom_svg_rect_element_get_y, svgRectElementGetY,
        ghcjs_dom_svg_rect_element_get_width, svgRectElementGetWidth,
        ghcjs_dom_svg_rect_element_get_height, svgRectElementGetHeight,
        ghcjs_dom_svg_rect_element_get_rx, svgRectElementGetRx,
        ghcjs_dom_svg_rect_element_get_ry, svgRectElementGetRy,
        SVGRectElement, IsSVGRectElement, castToSVGRectElement,
        gTypeSVGRectElement, toSVGRectElement)
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

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_rect_element_get_x ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
svgRectElementGetX ::
                   (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetX self
  = (ghcjs_dom_svg_rect_element_get_x
       (unSVGRectElement (toSVGRectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_rect_element_get_y ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
svgRectElementGetY ::
                   (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetY self
  = (ghcjs_dom_svg_rect_element_get_y
       (unSVGRectElement (toSVGRectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_rect_element_get_width ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
svgRectElementGetWidth ::
                       (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetWidth self
  = (ghcjs_dom_svg_rect_element_get_width
       (unSVGRectElement (toSVGRectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_rect_element_get_height ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
svgRectElementGetHeight ::
                        (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetHeight self
  = (ghcjs_dom_svg_rect_element_get_height
       (unSVGRectElement (toSVGRectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"rx\"]"
        ghcjs_dom_svg_rect_element_get_rx ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
svgRectElementGetRx ::
                    (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetRx self
  = (ghcjs_dom_svg_rect_element_get_rx
       (unSVGRectElement (toSVGRectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"ry\"]"
        ghcjs_dom_svg_rect_element_get_ry ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
svgRectElementGetRy ::
                    (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetRy self
  = (ghcjs_dom_svg_rect_element_get_ry
       (unSVGRectElement (toSVGRectElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGRectElement (
  ) where
#endif
