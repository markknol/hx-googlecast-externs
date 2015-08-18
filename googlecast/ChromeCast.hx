package googlecast;

/**
 * Mimic package function/variables of chrome.cast
 * @author Mark Knol
 */
class ChromeCast
{
	/// The API version.
	public static var VERSION(get,null):String;
	inline static function get_VERSION() return untyped __js__("chrome.cast.VERSION");
	
	/// Default timeout values in milliseconds for API methods.
	public static var timeout(get,null):Int;
	inline static function get_timeout() return untyped __js__("chrome.cast.timeout");
	
	/// Flag for clients to check whether the API is loaded.
	public static var isAvailable(get,null):Bool;
	inline static function get_isAvailable() return untyped __js__("chrome.cast.isAvailable");
	
	/// listener should be: function(loaded:Bool, errorInfo:String):Void
	inline public static function boot(injectScript:Bool = false, listener:Bool->String->Void) 
	{
		Reflect.setProperty(js.Browser.window, '__onGCastApiAvailable', listener);
	}
	
	/**
	 * Initializes the API. Note that either successCallback and errorCallback will be invoked once the API has finished initialization. The sessionListener and receiverListener may be invoked at any time afterwards, and possibly more than once.
	 * @param	apiConfig The object with parameters to initialize the API. Must not be null.
	 * @param	successCallback
	 * @param	errorCallback The possible errors are TIMEOUT, INVALID_PARAMETER, EXTENSION_MISSING.
	 */
	inline public static function initialize(apiConfig:ApiConfig, successCallback:Void->Void, errorCallback:CastError->Void)
	{
		untyped __js__("chrome.cast.initialize")(apiConfig, successCallback, errorCallback);
	}
	
	/**
	 * Requests that a receiver application session be created or joined. By default, the SessionRequest passed to the API at initialization time is used; this may be overridden by passing a different session request in opt_sessionRequest. 
	 * @param	onRequestSessionSuccess
	 * @param	onLaunchError The possible errors are TIMEOUT, INVALID_PARAMETER, API_NOT_INITIALIZED, CANCEL, CHANNEL_ERROR, SESSION_ERROR, RECEIVER_UNAVAILABLE, and EXTENSION_MISSING. Note that the timeout timer starts after users select a receiver. Selecting a receiver requires user's action, which has no timeout. 
	 * @param	opt_sessionRequest Optional.
	 */
	inline public static function requestSession(onRequestSessionSuccess:Session->Void, onLaunchError:CastError->Void, ?opt_sessionRequest:SessionRequest)
	{
		untyped __js__("chrome.cast.requestSession")(onRequestSessionSuccess, onLaunchError, opt_sessionRequest);
	}
	
	/**
	 * Requests to join an existing session with the given id. Once joined, the session will be passed to the sessionListener set by chrome.cast.initialize. If the session with the given sessionId is already known when this function is called, then sessionListener is called immediately. Otherwise, once a session with the given sessionId is discovered, sessionListener will be called. 
	 * @param	sessionId The id of the session to join.
	 */
	inline public static function requestSessionById(sessionId:String)
	{
		untyped __js__("chrome.cast.requestSessionById")(sessionId);
	}
	
	/**
	 * Adds a listener function that will be invoked when the user has acted through the UI to start or stop casting. The sender application can use this to show a transition in its user interface (i.e., pause locally playing media) before the casting action has completed or failed.
		- The listener is not guaranteed to be invoked and applications should not rely on it to function correctly.
		- The listener will be passed the receiver that was acted upon, if available. However the receiver may not be known and null will be passed instead.
		- The listener will be called as soon as possible after the user has acted. It should be invoked before the application is notified of the resulting state change through the API. 
	 */
	inline public static function addReceiverActionListener(listener:ReceiverActionListener)
	{
		untyped __js__("chrome.cast.addReceiverActionListener")(listener);
	}
	
	/**
	 * Removes a listener function that was previously added with addReceiverActionListener. 
	 */
	inline public static function removeReceiverActionListener(listener:ReceiverActionListener)
	{
		untyped __js__("chrome.cast.removeReceiverActionListener")(listener);
	}
	
	/**
	 * Logs a debug message from the app. This message may be sent in a feedback report to Google if users explicitly choose to include fine logs. 
	 */
	inline public static function logMessage(message:String)
	{
		untyped __js__("chrome.cast.logMessage")(message);
	}
	
	/**
	 * Sets custom receiver list 
	 * @param	receivers The new list. Must not be null. 
	 * @param	successCallback
	 * @param	errorCallback The possible errors are TIMEOUT, API_NOT_INITIALIZED, INVALID_PARAMETER, CHANNEL_ERROR, and EXTENSION_MISSING. 
	 */
	inline public static function setCustomReceivers(receivers:Array<Receiver>, successCallback:Void->Void, errorCallback:CastError->Void)
	{
		untyped __js__("chrome.cast.setCustomReceivers")(receivers, successCallback, errorCallback);
	}
	
	/**
	 * Sets the receiver name and display status. To show the receiver as idle, set displayStatus to null. Only valid for CUSTO
	 * @param	receiver The receiver. Must not be null. 
	 * @param	successCallback
	 * @param	errorCallback The possible errors are TIMEOUT, API_NOT_INITIALIZED, INVALID_PARAMETER, CHANNEL_ERROR, and EXTENSION_MISSING. 
	 */
	inline public static function setReceiverDisplayStatus(receiver:Receiver, successCallback:Void->Void, errorCallback:CastError->Void)
	{
		untyped __js__("chrome.cast.setCustomReceivers")(receiver, successCallback, errorCallback);
	}
}

typedef ReceiverActionListener = Receiver->ReceiverAction->Void;