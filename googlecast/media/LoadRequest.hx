package googlecast.media;

/**
 * A request to load new media into the player.
 */
@:native("chrome.cast.media.LoadRequest")
extern class LoadRequest 
{
	/// Array of Track trackIds that should be active. If the array is not provided, the default tracks will be active. If two incompatible trackIds are provided (for example two active audio tracks) the command will fail with INVALID_PARAMETER. 
	public var activeTrackIds:Array<Int>;
	
	///Whether the media will automatically play.	
	public var autoplay:Bool;

	///Seconds from the beginning of the media to start playback.
	public var currentTime:Float;

	///Custom data for the receiver application.
	public var customData:Dynamic;
	
	///Media description;
	public var media:MediaInfo;
	
	/**
	 * A request to load new media into the player.
	 * @param	mediaInfo Media description. Must not be null. 
	 */
	public function new(mediaInfo:MediaInfo);
}