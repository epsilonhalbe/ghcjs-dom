{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Navigator
       (ghcjs_dom_navigator_get_gamepads, navigatorGetGamepads,
        ghcjs_dom_navigator_webkit_get_user_media,
        navigatorWebkitGetUserMedia,
        ghcjs_dom_navigator_register_protocol_handler,
        navigatorRegisterProtocolHandler,
        ghcjs_dom_navigator_is_protocol_handler_registered,
        navigatorIsProtocolHandlerRegistered,
        ghcjs_dom_navigator_unregister_protocol_handler,
        navigatorUnregisterProtocolHandler,
        ghcjs_dom_navigator_vibratePattern, navigatorVibratePattern,
        ghcjs_dom_navigator_vibrate, navigatorVibrate,
        ghcjs_dom_navigator_java_enabled, navigatorJavaEnabled,
        ghcjs_dom_navigator_get_storage_updates,
        navigatorGetStorageUpdates, ghcjs_dom_navigator_get_webkit_battery,
        navigatorGetWebkitBattery, ghcjs_dom_navigator_get_geolocation,
        navigatorGetGeolocation,
        ghcjs_dom_navigator_get_webkit_temporary_storage,
        navigatorGetWebkitTemporaryStorage,
        ghcjs_dom_navigator_get_webkit_persistent_storage,
        navigatorGetWebkitPersistentStorage,
        ghcjs_dom_navigator_get_app_code_name, navigatorGetAppCodeName,
        ghcjs_dom_navigator_get_app_name, navigatorGetAppName,
        ghcjs_dom_navigator_get_app_version, navigatorGetAppVersion,
        ghcjs_dom_navigator_get_language, navigatorGetLanguage,
        ghcjs_dom_navigator_get_user_agent, navigatorGetUserAgent,
        ghcjs_dom_navigator_get_platform, navigatorGetPlatform,
        ghcjs_dom_navigator_get_plugins, navigatorGetPlugins,
        ghcjs_dom_navigator_get_mime_types, navigatorGetMimeTypes,
        ghcjs_dom_navigator_get_product, navigatorGetProduct,
        ghcjs_dom_navigator_get_product_sub, navigatorGetProductSub,
        ghcjs_dom_navigator_get_vendor, navigatorGetVendor,
        ghcjs_dom_navigator_get_vendor_sub, navigatorGetVendorSub,
        ghcjs_dom_navigator_get_cookie_enabled, navigatorGetCookieEnabled,
        ghcjs_dom_navigator_get_on_line, navigatorGetOnLine,
        ghcjs_dom_navigator_get_hardware_concurrency,
        navigatorGetHardwareConcurrency, Navigator, IsNavigator,
        castToNavigator, gTypeNavigator, toNavigator)
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

 
foreign import javascript unsafe "$1[\"getGamepads\"]()"
        ghcjs_dom_navigator_get_gamepads ::
        JSRef Navigator -> IO (JSRef [Maybe Gamepad])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.gamepads Mozilla Navigator.gamepads documentation> 
navigatorGetGamepads ::
                     (IsNavigator self) => self -> IO [Maybe Gamepad]
navigatorGetGamepads self
  = (ghcjs_dom_navigator_get_gamepads
       (unNavigator (toNavigator self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "$1[\"webkitGetUserMedia\"]($2, $3,\n$4)"
        ghcjs_dom_navigator_webkit_get_user_media ::
        JSRef Navigator ->
          JSRef Dictionary ->
            JSRef NavigatorUserMediaSuccessCallback ->
              JSRef NavigatorUserMediaErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitGetUserMedia Mozilla Navigator.webkitGetUserMedia documentation> 
navigatorWebkitGetUserMedia ::
                            (IsNavigator self, IsDictionary options,
                             IsNavigatorUserMediaSuccessCallback successCallback,
                             IsNavigatorUserMediaErrorCallback errorCallback) =>
                              self ->
                                Maybe options ->
                                  Maybe successCallback -> Maybe errorCallback -> IO ()
navigatorWebkitGetUserMedia self options successCallback
  errorCallback
  = ghcjs_dom_navigator_webkit_get_user_media
      (unNavigator (toNavigator self))
      (maybe jsNull (unDictionary . toDictionary) options)
      (maybe jsNull
         (unNavigatorUserMediaSuccessCallback .
            toNavigatorUserMediaSuccessCallback)
         successCallback)
      (maybe jsNull
         (unNavigatorUserMediaErrorCallback .
            toNavigatorUserMediaErrorCallback)
         errorCallback)
 
foreign import javascript unsafe
        "$1[\"registerProtocolHandler\"]($2,\n$3, $4)"
        ghcjs_dom_navigator_register_protocol_handler ::
        JSRef Navigator -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.registerProtocolHandler Mozilla Navigator.registerProtocolHandler documentation> 
navigatorRegisterProtocolHandler ::
                                 (IsNavigator self, ToJSString scheme, ToJSString url,
                                  ToJSString title) =>
                                   self -> scheme -> url -> title -> IO ()
navigatorRegisterProtocolHandler self scheme url title
  = ghcjs_dom_navigator_register_protocol_handler
      (unNavigator (toNavigator self))
      (toJSString scheme)
      (toJSString url)
      (toJSString title)
 
foreign import javascript unsafe
        "$1[\"isProtocolHandlerRegistered\"]($2,\n$3)"
        ghcjs_dom_navigator_is_protocol_handler_registered ::
        JSRef Navigator -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.isProtocolHandlerRegistered Mozilla Navigator.isProtocolHandlerRegistered documentation> 
navigatorIsProtocolHandlerRegistered ::
                                     (IsNavigator self, ToJSString scheme, ToJSString url,
                                      FromJSString result) =>
                                       self -> scheme -> url -> IO result
navigatorIsProtocolHandlerRegistered self scheme url
  = fromJSString <$>
      (ghcjs_dom_navigator_is_protocol_handler_registered
         (unNavigator (toNavigator self))
         (toJSString scheme)
         (toJSString url))
 
foreign import javascript unsafe
        "$1[\"unregisterProtocolHandler\"]($2,\n$3)"
        ghcjs_dom_navigator_unregister_protocol_handler ::
        JSRef Navigator -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.unregisterProtocolHandler Mozilla Navigator.unregisterProtocolHandler documentation> 
navigatorUnregisterProtocolHandler ::
                                   (IsNavigator self, ToJSString scheme, ToJSString url) =>
                                     self -> scheme -> url -> IO ()
navigatorUnregisterProtocolHandler self scheme url
  = ghcjs_dom_navigator_unregister_protocol_handler
      (unNavigator (toNavigator self))
      (toJSString scheme)
      (toJSString url)
 
foreign import javascript unsafe "($1[\"vibrate\"]($2) ? 1 : 0)"
        ghcjs_dom_navigator_vibratePattern ::
        JSRef Navigator -> JSRef [Word] -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibratePattern Mozilla Navigator.vibratePattern documentation> 
navigatorVibratePattern ::
                        (IsNavigator self) => self -> [Word] -> IO Bool
navigatorVibratePattern self pattern
  = toJSRef pattern >>=
      \ pattern' ->
        ghcjs_dom_navigator_vibratePattern (unNavigator (toNavigator self))
          pattern'
 
foreign import javascript unsafe "($1[\"vibrate\"]($2) ? 1 : 0)"
        ghcjs_dom_navigator_vibrate :: JSRef Navigator -> Word -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
navigatorVibrate :: (IsNavigator self) => self -> Word -> IO Bool
navigatorVibrate self time
  = ghcjs_dom_navigator_vibrate (unNavigator (toNavigator self)) time
 
foreign import javascript unsafe "($1[\"javaEnabled\"]() ? 1 : 0)"
        ghcjs_dom_navigator_java_enabled :: JSRef Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
navigatorJavaEnabled :: (IsNavigator self) => self -> IO Bool
navigatorJavaEnabled self
  = ghcjs_dom_navigator_java_enabled (unNavigator (toNavigator self))
 
foreign import javascript unsafe "$1[\"getStorageUpdates\"]()"
        ghcjs_dom_navigator_get_storage_updates :: JSRef Navigator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.storageUpdates Mozilla Navigator.storageUpdates documentation> 
navigatorGetStorageUpdates :: (IsNavigator self) => self -> IO ()
navigatorGetStorageUpdates self
  = ghcjs_dom_navigator_get_storage_updates
      (unNavigator (toNavigator self))
 
foreign import javascript unsafe "$1[\"webkitBattery\"]"
        ghcjs_dom_navigator_get_webkit_battery ::
        JSRef Navigator -> IO (JSRef BatteryManager)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitBattery Mozilla Navigator.webkitBattery documentation> 
navigatorGetWebkitBattery ::
                          (IsNavigator self) => self -> IO (Maybe BatteryManager)
navigatorGetWebkitBattery self
  = (ghcjs_dom_navigator_get_webkit_battery
       (unNavigator (toNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"geolocation\"]"
        ghcjs_dom_navigator_get_geolocation ::
        JSRef Navigator -> IO (JSRef Geolocation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.geolocation Mozilla Navigator.geolocation documentation> 
navigatorGetGeolocation ::
                        (IsNavigator self) => self -> IO (Maybe Geolocation)
navigatorGetGeolocation self
  = (ghcjs_dom_navigator_get_geolocation
       (unNavigator (toNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        ghcjs_dom_navigator_get_webkit_temporary_storage ::
        JSRef Navigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitTemporaryStorage Mozilla Navigator.webkitTemporaryStorage documentation> 
navigatorGetWebkitTemporaryStorage ::
                                   (IsNavigator self) => self -> IO (Maybe StorageQuota)
navigatorGetWebkitTemporaryStorage self
  = (ghcjs_dom_navigator_get_webkit_temporary_storage
       (unNavigator (toNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        ghcjs_dom_navigator_get_webkit_persistent_storage ::
        JSRef Navigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitPersistentStorage Mozilla Navigator.webkitPersistentStorage documentation> 
navigatorGetWebkitPersistentStorage ::
                                    (IsNavigator self) => self -> IO (Maybe StorageQuota)
navigatorGetWebkitPersistentStorage self
  = (ghcjs_dom_navigator_get_webkit_persistent_storage
       (unNavigator (toNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"appCodeName\"]"
        ghcjs_dom_navigator_get_app_code_name ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appCodeName Mozilla Navigator.appCodeName documentation> 
navigatorGetAppCodeName ::
                        (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetAppCodeName self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_app_code_name
         (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"appName\"]"
        ghcjs_dom_navigator_get_app_name :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appName Mozilla Navigator.appName documentation> 
navigatorGetAppName ::
                    (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetAppName self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_app_name (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"appVersion\"]"
        ghcjs_dom_navigator_get_app_version ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appVersion Mozilla Navigator.appVersion documentation> 
navigatorGetAppVersion ::
                       (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetAppVersion self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_app_version
         (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"language\"]"
        ghcjs_dom_navigator_get_language :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.language Mozilla Navigator.language documentation> 
navigatorGetLanguage ::
                     (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetLanguage self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_language (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"userAgent\"]"
        ghcjs_dom_navigator_get_user_agent ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.userAgent Mozilla Navigator.userAgent documentation> 
navigatorGetUserAgent ::
                      (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetUserAgent self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_user_agent
         (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"platform\"]"
        ghcjs_dom_navigator_get_platform :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.platform Mozilla Navigator.platform documentation> 
navigatorGetPlatform ::
                     (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetPlatform self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_platform (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"plugins\"]"
        ghcjs_dom_navigator_get_plugins ::
        JSRef Navigator -> IO (JSRef DOMPluginArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.plugins Mozilla Navigator.plugins documentation> 
navigatorGetPlugins ::
                    (IsNavigator self) => self -> IO (Maybe DOMPluginArray)
navigatorGetPlugins self
  = (ghcjs_dom_navigator_get_plugins
       (unNavigator (toNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"mimeTypes\"]"
        ghcjs_dom_navigator_get_mime_types ::
        JSRef Navigator -> IO (JSRef DOMMimeTypeArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mimeTypes Mozilla Navigator.mimeTypes documentation> 
navigatorGetMimeTypes ::
                      (IsNavigator self) => self -> IO (Maybe DOMMimeTypeArray)
navigatorGetMimeTypes self
  = (ghcjs_dom_navigator_get_mime_types
       (unNavigator (toNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"product\"]"
        ghcjs_dom_navigator_get_product :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.product Mozilla Navigator.product documentation> 
navigatorGetProduct ::
                    (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetProduct self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_product (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"productSub\"]"
        ghcjs_dom_navigator_get_product_sub ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.productSub Mozilla Navigator.productSub documentation> 
navigatorGetProductSub ::
                       (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetProductSub self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_product_sub
         (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"vendor\"]"
        ghcjs_dom_navigator_get_vendor :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vendor Mozilla Navigator.vendor documentation> 
navigatorGetVendor ::
                   (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetVendor self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_vendor (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "$1[\"vendorSub\"]"
        ghcjs_dom_navigator_get_vendor_sub ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vendorSub Mozilla Navigator.vendorSub documentation> 
navigatorGetVendorSub ::
                      (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetVendorSub self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_vendor_sub
         (unNavigator (toNavigator self)))
 
foreign import javascript unsafe "($1[\"cookieEnabled\"] ? 1 : 0)"
        ghcjs_dom_navigator_get_cookie_enabled ::
        JSRef Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.cookieEnabled Mozilla Navigator.cookieEnabled documentation> 
navigatorGetCookieEnabled :: (IsNavigator self) => self -> IO Bool
navigatorGetCookieEnabled self
  = ghcjs_dom_navigator_get_cookie_enabled
      (unNavigator (toNavigator self))
 
foreign import javascript unsafe "($1[\"onLine\"] ? 1 : 0)"
        ghcjs_dom_navigator_get_on_line :: JSRef Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.onLine Mozilla Navigator.onLine documentation> 
navigatorGetOnLine :: (IsNavigator self) => self -> IO Bool
navigatorGetOnLine self
  = ghcjs_dom_navigator_get_on_line (unNavigator (toNavigator self))
 
foreign import javascript unsafe "$1[\"hardwareConcurrency\"]"
        ghcjs_dom_navigator_get_hardware_concurrency ::
        JSRef Navigator -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.hardwareConcurrency Mozilla Navigator.hardwareConcurrency documentation> 
navigatorGetHardwareConcurrency ::
                                (IsNavigator self) => self -> IO Int
navigatorGetHardwareConcurrency self
  = ghcjs_dom_navigator_get_hardware_concurrency
      (unNavigator (toNavigator self))
#else
module GHCJS.DOM.Navigator (
  module Graphics.UI.Gtk.WebKit.DOM.Navigator
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Navigator
#endif
