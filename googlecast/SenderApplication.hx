package googlecast;

/**
 * 
 */
@:native("chrome.cast.SenderApplication")
extern class SenderApplication 
{
	///The identifier or URL for the application in the respective platform's app store. 
	public var packageId:Null<String>;
	
	///Must not be null. 
	public var platform:SenderPlatform;
	
	///URL or intent to launch the application.May be null. 
	public var url:Null<String>;
	
	/**
	 * Describes a sender application. Normally, these objects should not be created by the client. 
	 * @param	platform Must not be null. 
	 */
	public function new(platform:SenderPlatform);
}