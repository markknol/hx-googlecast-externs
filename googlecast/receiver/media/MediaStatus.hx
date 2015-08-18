package googlecast.receiver.media;

/** Represents the status of a media session. */
@:native("cast.receiver.media.MediaStatus")
extern class MediaStatus {
	/** The current playback position. */
	public var currentTime:Float;
	/** Application-specific media status. */
	public var customData:Dynamic;
	/** If the state is IDLE, the reason the player went to IDLE state. */
	public var idleReason:googlecast.receiver.media.IdleReason;
	/** The media information. */
	public var media:googlecast.receiver.media.MediaInformation;
	/** Unique id for the session. */
	public var mediaSessionId:Float;
	/** The playback rate. */
	public var playbackRate:Float;
	/** The playback state. */
	public var playerState:googlecast.receiver.media.PlayerState;
	/** The commands supported by this player. */
	public var supportedMediaCommands:Float;
	/** The current stream volume. */
	public var volume:googlecast.receiver.media.Volume;
	public function new();
}