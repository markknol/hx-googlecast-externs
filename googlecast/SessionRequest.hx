package googlecast;
/**
 * A request to start or connect to a session.
 */
@:native("chrome.cast.SessionRequest")
extern class SessionRequest
{
	///The receiver application id.
	public var appId:String;
	
	///Capabilities required of the receiver device. default: [VIDEO_OUT, AUDIO_OUT]
	public var capabilities:Array<Capability>;
	
	///Optional language to add to the Accept-Language header value when launching the receiver application. Ignored if joining an already existing session. The value is represented as '-' tag as per RFC 5646. For example 'es-ES'. May be null.
	public var language:Null<String>;
	
	///The timeout used for requesting a session for the application in milliseconds.
	public var requestSessionTimeout:Int;
	
	/**
	 * A request to start or connect to a session.
	 * @param	appId The receiver application id. as default you could use MediaConstants.DEFAULT_MEDIA_RECEIVER_APP_ID
	 * @param	opt_capabilities Required capabilities for the receiver. Must not be null. Optional.
	 * @param	opt_timeout optional timeout for requesting a session for this application. Optional.
	 */
	public function new(appId:String, ?opt_capabilities:Array<Capability>, ?opt_timeout:Int);
	
}