package googlecast.media;

/**
 * Describes a media item. 
 * 
 * Supported types can be found here https://developers.google.com/cast/docs/media
 */
@:native("chrome.cast.media.MediaInfo")
extern class MediaInfo 
{
	///Identifies the content.	
	public var contentId:String;

	///MIME content type of the media.
	public var contentType:String;

	///Custom data set by the receiver application.
	public var customData:Dynamic;

	///Duration of the content, in seconds.
	public var duration:Float;

	///Describes the media content.
	public var metadata:GenericMediaMetadata;

	///The type of media stream.
	public var streamType:StreamType;

	///The requested text track style.
	public var textTrackStyle:TextTrackStyle;

	///Array of Track objects.
	public var tracks:Array<Track>;

	public function new(contentId:String, ?contentType:String);
}