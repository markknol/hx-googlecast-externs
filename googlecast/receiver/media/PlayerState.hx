package googlecast.receiver.media;

@:fakeEnum(Int)
@:native("cast.receiver.media.PlayerState")
extern enum PlayerState
{
	/** The player is in BUFFERING state. */
	BUFFERING;
	/** The player is in IDLE state. */
	IDLE;
	/** The player is in PAUSED state. */
	PAUSED;
	/** The player is in PLAYING state. */
	PLAYING;
}