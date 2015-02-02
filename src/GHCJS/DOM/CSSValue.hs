{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSValue
       (cCSS_INHERIT, cCSS_PRIMITIVE_VALUE, cCSS_VALUE_LIST, cCSS_CUSTOM,
        ghcjs_dom_css_value_set_css_text, cssValueSetCssText,
        ghcjs_dom_css_value_get_css_text, cssValueGetCssText,
        ghcjs_dom_css_value_get_css_value_type, cssValueGetCssValueType,
        CSSValue, IsCSSValue, castToCSSValue, gTypeCSSValue, toCSSValue)
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

cCSS_INHERIT = 0
cCSS_PRIMITIVE_VALUE = 1
cCSS_VALUE_LIST = 2
cCSS_CUSTOM = 3
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        ghcjs_dom_css_value_set_css_text ::
        JSRef CSSValue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
cssValueSetCssText ::
                   (IsCSSValue self, ToJSString val) => self -> val -> IO ()
cssValueSetCssText self val
  = ghcjs_dom_css_value_set_css_text (unCSSValue (toCSSValue self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cssText\"]"
        ghcjs_dom_css_value_get_css_text :: JSRef CSSValue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
cssValueGetCssText ::
                   (IsCSSValue self, FromJSString result) => self -> IO result
cssValueGetCssText self
  = fromJSString <$>
      (ghcjs_dom_css_value_get_css_text (unCSSValue (toCSSValue self)))
 
foreign import javascript unsafe "$1[\"cssValueType\"]"
        ghcjs_dom_css_value_get_css_value_type :: JSRef CSSValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssValueType Mozilla CSSValue.cssValueType documentation> 
cssValueGetCssValueType :: (IsCSSValue self) => self -> IO Word
cssValueGetCssValueType self
  = ghcjs_dom_css_value_get_css_value_type
      (unCSSValue (toCSSValue self))
#else
module GHCJS.DOM.CSSValue (
  module Graphics.UI.Gtk.WebKit.DOM.CSSValue
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSValue
#endif
