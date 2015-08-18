package googlecast.media;

/**
 * Possible media commands supported by the receiver application. 
 */
@:fakeEnum(Int)
@:native("chrome.cast.media.MediaCommand")
extern enum MediaCommand 
{
	PAUSE;SEEK;STREAM_MUTE;STREAM_VOLUME;
}