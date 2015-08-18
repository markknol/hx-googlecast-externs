package googlecast;

/**
 * An image that describes a receiver application or media item. This could be an application icon, cover art, or a thumbnail.
 */
@:native("chrome.cast.Image")
extern class Image 
{
	/// The width of the image. may be null.
	public var width:Int;
	
	/// The height of the image. may be null.
	public var height:Int;
	
	/// The URL to the image. 
	public var url:String;
	
	/**
	 * An image that describes a receiver application or media item. This could be an application icon, cover art, or a thumbnail.
	 * @param	url The URL to the image.
	 */
	public function new(url:String);
}