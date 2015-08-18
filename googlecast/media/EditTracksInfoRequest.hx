package googlecast.media;

/**
 * A request to modify the text tracks style or change the tracks status. If a trackId does not match the existing trackIds the whole request will fail and no status will change. It is acceptable to change the text track style even if no text track is currently active. 
 */
@:native("chrome.cast.media.EditTracksInfoRequest")
extern class EditTracksInfoRequest 
{
	/// Array of the Track trackIds that should be active. If it is not provided, the active tracks will not change. If the array is empty, no track will be active. 
	public var activeTrackIds:Array<Int>;
	
	/// The requested text track style. If it is not provided the existing style will be used. 
	public var textTrackStyle:TextTrackStyle;
	
	/// A request to modify the text tracks style or change the tracks status. If a trackId does not match the existing trackIds the whole request will fail and no status will change. It is acceptable to change the text track style even if no text track is currently active. 
	public function new();
}