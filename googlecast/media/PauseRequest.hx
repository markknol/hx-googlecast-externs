package googlecast.media;

/**
 * A request to pause the currently paused media.
 */
@:native("chrome.cast.media.PauseRequest")
extern class PauseRequest 
{
	/// Custom data for the receiver application.
	public var customData:Dynamic;
	
	///A request to pause the currently paused media.
	public function new();
}