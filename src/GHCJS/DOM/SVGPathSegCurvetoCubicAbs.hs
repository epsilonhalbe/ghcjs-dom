{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicAbs
       (ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x,
        svgPathSegCurvetoCubicAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x,
        svgPathSegCurvetoCubicAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y,
        svgPathSegCurvetoCubicAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y,
        svgPathSegCurvetoCubicAbsGetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x1,
        svgPathSegCurvetoCubicAbsSetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x1,
        svgPathSegCurvetoCubicAbsGetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y1,
        svgPathSegCurvetoCubicAbsSetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y1,
        svgPathSegCurvetoCubicAbsGetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x2,
        svgPathSegCurvetoCubicAbsSetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x2,
        svgPathSegCurvetoCubicAbsGetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y2,
        svgPathSegCurvetoCubicAbsSetY2,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y2,
        svgPathSegCurvetoCubicAbsGetY2, SVGPathSegCurvetoCubicAbs,
        IsSVGPathSegCurvetoCubicAbs, castToSVGPathSegCurvetoCubicAbs,
        gTypeSVGPathSegCurvetoCubicAbs, toSVGPathSegCurvetoCubicAbs)
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

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
svgPathSegCurvetoCubicAbsSetX ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetX self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
svgPathSegCurvetoCubicAbsGetX ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetX self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
svgPathSegCurvetoCubicAbsSetY ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetY self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
svgPathSegCurvetoCubicAbsGetY ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetY self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
svgPathSegCurvetoCubicAbsSetX1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetX1 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
svgPathSegCurvetoCubicAbsGetX1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetX1 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
svgPathSegCurvetoCubicAbsSetY1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetY1 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
svgPathSegCurvetoCubicAbsGetY1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetY1 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
svgPathSegCurvetoCubicAbsSetX2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetX2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
svgPathSegCurvetoCubicAbsGetX2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetX2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
svgPathSegCurvetoCubicAbsSetY2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetY2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
svgPathSegCurvetoCubicAbsGetY2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetY2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicAbs (
  ) where
#endif
