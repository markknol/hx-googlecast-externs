package googlecast.media;

/**
 * States of the media player after resuming. 
 */
@:fakeEnum(Int)
@:native("chrome.cast.media.ResumeState")
extern enum ResumeState 
{
	PLAYBACK_PAUSE; PLAYBACK_START;
}