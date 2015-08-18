package googlecast.media;

/**
 * A request to seek the currently paused media.
 */
@:native("chrome.cast.media.SeekRequest")
extern class SeekRequest 
{
	/// The new current time for the media, in seconds after the start of the media. If the media type is chrome.cast.media.StreamType.LIVE, then currentTime is optional; if not set, the stream will resume at the live media position. 
	public var currentTime:Float;
	
	/// Custom data for the receiver application.
	public var customData:Dynamic;
	
	/// The desired media player state after the seek is complete. If unset, it will retain the state it had before seeking. 
	public var resumeState:ResumeState;
	
	///A request to seek the currently paused media.
	public function new();
}