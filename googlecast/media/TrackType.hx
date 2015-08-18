package googlecast.media;

@:fakeEnum(Int)
@:native("chrome.cast.media.TrackType")
extern enum TrackType 
{
	AUDIO; TEXT; VIDEO;
}