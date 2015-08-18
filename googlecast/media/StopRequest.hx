package googlecast.media;

/**
 * A request to stop the current media player.
 */
@:native("chrome.cast.media.StopRequest")
extern class StopRequest 
{
	/// Custom data for the receiver application.
	public var customData:Dynamic;
	
	///A request to stop the current media player.
	public function new();
}