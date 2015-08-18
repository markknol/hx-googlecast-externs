package googlecast.media;

/**
 * Describes track metadata information. 
 */
@:native("chrome.cast.media.Track")
extern class Track 
{
	///Custom application data. 
	public var customData:Dynamic;
	
	///Language tag as per RFC 5646. Mandatory when the subtype is SUBTITLES. May be null. 
	public var language:Null<String>;
	
	///A descriptive, human readable name for the track. For example, “Spanish”. This can be used by the sender UI for example, to create a selection dialog. If the name is empty the dialog would contain an empty slot. May be null. 
	public var name:Null<String>;
	
	///For text tracks, the type of text track. 
	public var subtype:TextTrackType;
	
	///Identifier of the track’s content. It can be the url of the track or any other identifier that allows the receiver to find the content (when the track is not inband or included in the manifest). For example it can be the url of a vtt file. 
	public var trackContentId:Null<String>;
	
	///The MIME type of the track content. For example if the track is a vtt file it will be ‘text/vtt’. This field is needed for out of band tracks, so it is usually provided if a trackContentId has also been provided. It is not mandatory if the receiver has a way to identify the content from the trackContentId, but recommended. The track content type, if provided, must be consistent with the track type. 
	public var trackContentType:Null<String>;
	
	///Unique identifier of the track within the context of a chrome.cast.media.MediaInfo object. 
	public var trackId:Int;
	
	///The type of track. 
	public var type:TextTrackType;
	
	public function new(trackId:Int, trackType:TextTrackType);
}