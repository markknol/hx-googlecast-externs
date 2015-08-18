package googlecast.receiver.media;

/** The reason for the player to be in IDLE state. */
@:fakeEnum(Int)
@:native("cast.receiver.media.IdleReason")
extern enum IdleReason{
	/** A sender requested to stop playback using the STOP command. */
	CANCELLED;
	/** The media was interrupted due to an error, this could happen if, for example, the player could not download media due to networking errors. */
	ERROR;
	/** The media playback completed. */
	FINISHED;
	/** A sender requested playing a different media using the LOAD command. */
	INTERRUPTED;
}