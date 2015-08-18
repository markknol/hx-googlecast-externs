package googlecast;

/**
 * Holds the configuraton for the API when initialized. 
 */
@:native("chrome.cast.ApiConfig")
extern class ApiConfig
{
	///Determines whether the SDK will automatically connect to a running session after initialization. Must not be null. 
	public var autoJoinPolicy:AutoJoinPolicy;
	
	///Requests whether the application should be launched on API initialization when the tab is already being cast. Apps in embedded content (like iframes) should set this field to CAST_THIS_TAB if they are not the main app on the page. This value also configures the default behavior of the extension popup for the page. Must not be null.
	public var defaultActionPolicy:DefaultActionPolicy;
	
	///Function invoked when the availability of a Cast receiver that supports the application in sessionRequest is known or changes. This function will always be invoked at least once after initialization completes. 
	public var receiverListener:ReceiverAvailability->Void;
	
	///Listener invoked when a session is created or connected by the SDK. This function may be invoked after initialization, if there is a session that is automatically created or connected. Note that requestSession method does not cause this listener to be invoked, since it has its own success callback. 
	public var sessionListener:Session->Void;
	
	///Describes the session to launch or the session to connect. Must not be null. 
	public var sessionRequest:SessionRequest;
	
	/**
	 * Holds the configuraton for the API when initialized. 
	 * @param	sessionRequest The session request. Must not be null. 
	 * @param	sessionListener A listener to notify when a session is available to the application. 
	 * @param	receiverListener A listener to notify when there is a receiver available. 
	 * @param	opt_autoJoinPolicy The auto join policy for the application. Optional. 
	 * @param	opt_defaultActionPolicy The default action to take when the user is already casting when the application is initialized. Optional. 
	 */
	public function new(sessionRequest:SessionRequest, sessionListener:Session->Void, receiverListener:ReceiverAvailability->Void, ?opt_autoJoinPolicy:AutoJoinPolicy, ?opt_defaultActionPolicy:DefaultActionPolicy);
}