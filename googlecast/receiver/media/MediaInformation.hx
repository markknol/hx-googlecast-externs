package googlecast.receiver.media;

/** Represents the media information. */
@:native("cast.receiver.media.MediaInformation")
extern class MediaInformation {
	/** Typically the url of the media. */
	public var contentId:String;
	/** The stream type. */
	public var contentType:String;
	/** Application-specific media information. */
	public var customData:Dynamic;
	/** The media duration. */
	public var duration:Float;
	/** The media metadata. */
	public var metadata:Dynamic;
	/** The stream type. */
	public var streamType:googlecast.receiver.media.StreamType;
	public function new();
}