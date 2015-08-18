package googlecast.media;

@:fakeEnum(Int)
@:native("chrome.cast.media.PlayerState")
extern enum PlayerState
{
	/** Player is in PLAY mode but not actively playing content. currentTime will not change.  */
	BUFFERING;
	/** No media is loaded into the player.  */
	IDLE;
	/** The media is not playing.  */
	PAUSED;
	/** The media is playing.  */
	PLAYING;
}