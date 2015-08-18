package googlecast.media;

/**
 * A request to get the media status. 
 */
@:native("chrome.cast.media.GetStatusRequest")
extern class GetStatusRequest 
{
	/// Custom data for the receiver application.
	public var customData:Dynamic;
	
	///A request to get the media status. 
	public function new();
}