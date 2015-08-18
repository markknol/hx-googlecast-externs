package googlecast.media;

/**
 * A request to play the currently paused media.
 */
@:native("chrome.cast.media.PlayRequest")
extern class PlayRequest 
{
	/// Custom data for the receiver application.
	public var customData:Dynamic;
	
	///A request to play the currently paused media.
	public function new();
}