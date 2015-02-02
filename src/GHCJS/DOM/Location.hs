{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Location
       (ghcjs_dom_location_assign, locationAssign,
        ghcjs_dom_location_replace, locationReplace,
        ghcjs_dom_location_reload, locationReload,
        ghcjs_dom_location_set_href, locationSetHref,
        ghcjs_dom_location_get_href, locationGetHref,
        ghcjs_dom_location_set_protocol, locationSetProtocol,
        ghcjs_dom_location_get_protocol, locationGetProtocol,
        ghcjs_dom_location_set_host, locationSetHost,
        ghcjs_dom_location_get_host, locationGetHost,
        ghcjs_dom_location_set_hostname, locationSetHostname,
        ghcjs_dom_location_get_hostname, locationGetHostname,
        ghcjs_dom_location_set_port, locationSetPort,
        ghcjs_dom_location_get_port, locationGetPort,
        ghcjs_dom_location_set_pathname, locationSetPathname,
        ghcjs_dom_location_get_pathname, locationGetPathname,
        ghcjs_dom_location_set_search, locationSetSearch,
        ghcjs_dom_location_get_search, locationGetSearch,
        ghcjs_dom_location_set_hash, locationSetHash,
        ghcjs_dom_location_get_hash, locationGetHash,
        ghcjs_dom_location_get_origin, locationGetOrigin,
        ghcjs_dom_location_get_ancestor_origins,
        locationGetAncestorOrigins, Location, IsLocation, castToLocation,
        gTypeLocation, toLocation)
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

 
foreign import javascript unsafe "$1[\"assign\"]($2)"
        ghcjs_dom_location_assign :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.assign Mozilla Location.assign documentation> 
locationAssign ::
               (IsLocation self, ToJSString url) => self -> url -> IO ()
locationAssign self url
  = ghcjs_dom_location_assign (unLocation (toLocation self))
      (toJSString url)
 
foreign import javascript unsafe "$1[\"replace\"]($2)"
        ghcjs_dom_location_replace :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.replace Mozilla Location.replace documentation> 
locationReplace ::
                (IsLocation self, ToJSString url) => self -> url -> IO ()
locationReplace self url
  = ghcjs_dom_location_replace (unLocation (toLocation self))
      (toJSString url)
 
foreign import javascript unsafe "$1[\"reload\"]()"
        ghcjs_dom_location_reload :: JSRef Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.reload Mozilla Location.reload documentation> 
locationReload :: (IsLocation self) => self -> IO ()
locationReload self
  = ghcjs_dom_location_reload (unLocation (toLocation self))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_location_set_href :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
locationSetHref ::
                (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetHref self val
  = ghcjs_dom_location_set_href (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_location_get_href :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
locationGetHref ::
                (IsLocation self, FromJSString result) => self -> IO result
locationGetHref self
  = fromJSString <$>
      (ghcjs_dom_location_get_href (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        ghcjs_dom_location_set_protocol ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
locationSetProtocol ::
                    (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetProtocol self val
  = ghcjs_dom_location_set_protocol (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_location_get_protocol :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
locationGetProtocol ::
                    (IsLocation self, FromJSString result) => self -> IO result
locationGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_location_get_protocol (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        ghcjs_dom_location_set_host :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
locationSetHost ::
                (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetHost self val
  = ghcjs_dom_location_set_host (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_location_get_host :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
locationGetHost ::
                (IsLocation self, FromJSString result) => self -> IO result
locationGetHost self
  = fromJSString <$>
      (ghcjs_dom_location_get_host (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        ghcjs_dom_location_set_hostname ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
locationSetHostname ::
                    (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetHostname self val
  = ghcjs_dom_location_set_hostname (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_location_get_hostname :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
locationGetHostname ::
                    (IsLocation self, FromJSString result) => self -> IO result
locationGetHostname self
  = fromJSString <$>
      (ghcjs_dom_location_get_hostname (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        ghcjs_dom_location_set_port :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
locationSetPort ::
                (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetPort self val
  = ghcjs_dom_location_set_port (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_location_get_port :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
locationGetPort ::
                (IsLocation self, FromJSString result) => self -> IO result
locationGetPort self
  = fromJSString <$>
      (ghcjs_dom_location_get_port (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        ghcjs_dom_location_set_pathname ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
locationSetPathname ::
                    (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetPathname self val
  = ghcjs_dom_location_set_pathname (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_location_get_pathname :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
locationGetPathname ::
                    (IsLocation self, FromJSString result) => self -> IO result
locationGetPathname self
  = fromJSString <$>
      (ghcjs_dom_location_get_pathname (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        ghcjs_dom_location_set_search ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
locationSetSearch ::
                  (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetSearch self val
  = ghcjs_dom_location_set_search (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_location_get_search :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
locationGetSearch ::
                  (IsLocation self, FromJSString result) => self -> IO result
locationGetSearch self
  = fromJSString <$>
      (ghcjs_dom_location_get_search (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        ghcjs_dom_location_set_hash :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
locationSetHash ::
                (IsLocation self, ToJSString val) => self -> val -> IO ()
locationSetHash self val
  = ghcjs_dom_location_set_hash (unLocation (toLocation self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_location_get_hash :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
locationGetHash ::
                (IsLocation self, FromJSString result) => self -> IO result
locationGetHash self
  = fromJSString <$>
      (ghcjs_dom_location_get_hash (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_location_get_origin :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.origin Mozilla Location.origin documentation> 
locationGetOrigin ::
                  (IsLocation self, FromJSString result) => self -> IO result
locationGetOrigin self
  = fromJSString <$>
      (ghcjs_dom_location_get_origin (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"ancestorOrigins\"]"
        ghcjs_dom_location_get_ancestor_origins ::
        JSRef Location -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.ancestorOrigins Mozilla Location.ancestorOrigins documentation> 
locationGetAncestorOrigins ::
                           (IsLocation self) => self -> IO (Maybe DOMStringList)
locationGetAncestorOrigins self
  = (ghcjs_dom_location_get_ancestor_origins
       (unLocation (toLocation self)))
      >>= fromJSRef
#else
module GHCJS.DOM.Location (
  module Graphics.UI.Gtk.WebKit.DOM.Location
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Location
#endif
