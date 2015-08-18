package googlecast.media;
import googlecast.Volume;

/**
 * A request to set the stream volume of the playing media. 
 */
@:native("chrome.cast.media.VolumeRequest")
extern class VolumeRequest 
{
	/// Custom data for the receiver application.
	public var customData:Dynamic;
	
	/// The new volume of the stream. At least one of level or muted must be set. 
	public var volume:Volume;
	
	/**
	 * A request to set the stream volume of the playing media. 
	 * @param	volume  The new volume of the stream. Must not be null. 
	 */
	public function new(volume:Volume);
}