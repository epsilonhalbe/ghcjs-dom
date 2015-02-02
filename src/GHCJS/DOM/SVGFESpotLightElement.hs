{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFESpotLightElement
       (ghcjs_dom_svgfe_spot_light_element_get_x,
        svgfeSpotLightElementGetX,
        ghcjs_dom_svgfe_spot_light_element_get_y,
        svgfeSpotLightElementGetY,
        ghcjs_dom_svgfe_spot_light_element_get_z,
        svgfeSpotLightElementGetZ,
        ghcjs_dom_svgfe_spot_light_element_get_points_at_x,
        svgfeSpotLightElementGetPointsAtX,
        ghcjs_dom_svgfe_spot_light_element_get_points_at_y,
        svgfeSpotLightElementGetPointsAtY,
        ghcjs_dom_svgfe_spot_light_element_get_points_at_z,
        svgfeSpotLightElementGetPointsAtZ,
        ghcjs_dom_svgfe_spot_light_element_get_specular_exponent,
        svgfeSpotLightElementGetSpecularExponent,
        ghcjs_dom_svgfe_spot_light_element_get_limiting_cone_angle,
        svgfeSpotLightElementGetLimitingConeAngle, SVGFESpotLightElement,
        IsSVGFESpotLightElement, castToSVGFESpotLightElement,
        gTypeSVGFESpotLightElement, toSVGFESpotLightElement)
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
        ghcjs_dom_svgfe_spot_light_element_get_x ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
svgfeSpotLightElementGetX ::
                          (IsSVGFESpotLightElement self) =>
                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetX self
  = (ghcjs_dom_svgfe_spot_light_element_get_x
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svgfe_spot_light_element_get_y ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
svgfeSpotLightElementGetY ::
                          (IsSVGFESpotLightElement self) =>
                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetY self
  = (ghcjs_dom_svgfe_spot_light_element_get_y
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"z\"]"
        ghcjs_dom_svgfe_spot_light_element_get_z ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
svgfeSpotLightElementGetZ ::
                          (IsSVGFESpotLightElement self) =>
                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetZ self
  = (ghcjs_dom_svgfe_spot_light_element_get_z
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"pointsAtX\"]"
        ghcjs_dom_svgfe_spot_light_element_get_points_at_x ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
svgfeSpotLightElementGetPointsAtX ::
                                  (IsSVGFESpotLightElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetPointsAtX self
  = (ghcjs_dom_svgfe_spot_light_element_get_points_at_x
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"pointsAtY\"]"
        ghcjs_dom_svgfe_spot_light_element_get_points_at_y ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
svgfeSpotLightElementGetPointsAtY ::
                                  (IsSVGFESpotLightElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetPointsAtY self
  = (ghcjs_dom_svgfe_spot_light_element_get_points_at_y
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"pointsAtZ\"]"
        ghcjs_dom_svgfe_spot_light_element_get_points_at_z ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
svgfeSpotLightElementGetPointsAtZ ::
                                  (IsSVGFESpotLightElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetPointsAtZ self
  = (ghcjs_dom_svgfe_spot_light_element_get_points_at_z
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        ghcjs_dom_svgfe_spot_light_element_get_specular_exponent ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
svgfeSpotLightElementGetSpecularExponent ::
                                         (IsSVGFESpotLightElement self) =>
                                           self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetSpecularExponent self
  = (ghcjs_dom_svgfe_spot_light_element_get_specular_exponent
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"limitingConeAngle\"]"
        ghcjs_dom_svgfe_spot_light_element_get_limiting_cone_angle ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
svgfeSpotLightElementGetLimitingConeAngle ::
                                          (IsSVGFESpotLightElement self) =>
                                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetLimitingConeAngle self
  = (ghcjs_dom_svgfe_spot_light_element_get_limiting_cone_angle
       (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFESpotLightElement (
  ) where
#endif
