package googlecast.receiver;

/** This class is used to send/receive media messages/events. */
@:native("cast.receiver.MediaManager")
extern class MediaManager {
	/** Creates a media manager instance. This class is used to send/receive media messages/events.
	 * @param mediaElement	HTMLMediaElement or cast.receiver.media.Player
	 * 						The DOM media element (video/audio) or a player that implements 
	 *						the cast.receiver.media.Player interface. Note that the MediaManager will 
	 *						add listeners for 'loadedmetadata', 'error', and 'ended' HTMLMediaElement events.
	 *						Must not be null.
	 * @param @optional supportedCommands	cast.receiver.media.Command
	 *						Media commands supported by the application.
	 *						LOAD, PLAY, STOP, GET_STATUS must always be supported. Optional.
	 */
	public function new(mediaElement:Dynamic, ?supportedCommands:googlecast.receiver.media.Command);

	/** The application developer can override this method to customize the media status
	 * that will be send to the senders (this method will be called before the media status is sent).
	 * By providing this method application developers can, for example, add custom data to the media status.
	 * The current media status will be provided as a parameter and the method should return
	 * the application-modified current status.
	 * The default behavior is to return the incoming media status.
	 * If the method returns null the media status message will not be sent
	 * (developers should be aware that if the media status is a response to a sender status request
	 * the sender will expect a response so this method should only return null it if the developer
	 * is also overriding onGetStatus). */
	dynamic public function customizedStatusCallback(cb:googlecast.receiver.media.MediaStatus):googlecast.receiver.media.MediaStatus;
	/** Called when the media ends. The default behavior is to call ResetMediaElement with idle reason FINISHED. */
	dynamic public function onEnded():Void;
	/** Called when there is an error not triggered by a LOAD request.
	 * The default behavior is to call ResetMediaElement. */
	dynamic public function onError(error:Dynamic):Void;
	/** Processes the get status event. */
	dynamic public function onGetStatus(event:googlecast.receiver.MediaManager.Event):Void;
	/** If provided, it processes the load event. The default behavior is to set the src and autoplay properties
	 * of the media element and call its load method.
	 * If provided, the currentTime property will be modified when the 'loadedmetadata' event is fired
	 * (in onMetadataLoaded) as it can only be set when the media element duration property has been set. */
	dynamic public function onLoad(event:googlecast.receiver.MediaManager.Event):Void;
	/** Called when load has had an error, it can be overridden to handle application specific logic.
	 * The default behavior is to call resetMediaElement with idle reason ERROR and sendLoadError
	 * with error type LOAD_FAILED. */
	dynamic public function onLoadMetadataError(info:googlecast.receiver.MediaManager.LoadInfo):Void;
	/** Called when load has completed, it can be overridden to handle application specific action.
	 * The default behavior is to set the currentTime property of the media element
	 * (if it was provided in the LOAD request), then call sendLoadComplete. */
	dynamic public function onMetadataLoaded(info:googlecast.receiver.MediaManager.LoadInfo):Void;
	/** Processes the pause event. The default behavior is to call the media element's pause method
	 * and broadcast the status providing the incoming requestId. */
	dynamic public function onPause(event:googlecast.receiver.MediaManager.Event):Void;
	/** Processes the play event. The default behavior is to call the media element's play method
	 * and broadcast the status providing the incoming requestId. */
	dynamic public function onPlay(event:googlecast.receiver.MediaManager.Event):Void;
	/** Processes the seek event. The default behavior is to call the media element's play
	 * or pause methods (only if required based on the current state and the resume state value of the request)
	 * and broadcast the status providing the incoming requestId. */
	dynamic public function onSeek(event:googlecast.receiver.MediaManager.Event):Void;
	/** Processes the set volume event. The default behavior is to set volume and muted on the media element
	 * as required and broadcast the status providing the incoming requestId. */
	dynamic public function onSetVolume(event:googlecast.receiver.MediaManager.Event):Void;
	/** Processes the stop event. The default behavior is to call resetMediaElement,
	 * with idle reason CANCELLED, and broadcast the status providing the incoming requestId. */
	dynamic public function onStop(event:googlecast.receiver.MediaManager.Event):Void;


	/** Provides information about the media currently loaded.
	 * @returns	googlecast.receiver.media.MediaInformation The media information.
	 * @see	googlecast.receiver.media.MediaInformation
	 */
	public function getMediaInformation():googlecast.receiver.media.MediaInformation;

	/** Sets information about the media currently loaded. This information will be sent to the senders
	 * when they request media status.
	 * @param	mediaInformation	googlecast.receiver.media.MediaInformation 
	 * 			The new media information. Use resetMediaElement to reset its value. Must not be null.
	 * @param @optional	broadcast	Bool
	 * 			Whether the senders should be notified about the change
	 *			(if not provided, the senders will be notified). Optional.
	 * @param @optional	broadcastStatusCustomData	Dynamic
	 *			If the senders should be notified this parameter allows to set the application-specific
	 *			custom data in the status message. Optional.
	 * @throws Error	If broadcastStatusCustomData is provided but broadcast is false.
	 * @see googlecast.receiver.media.MediaInformation
	 */
	public function setMediaInformation(mediaInformation:googlecast.receiver.media.MediaInformation,
		?broadcast:Null<Bool>,
		?broadcastStatusCustomData:Dynamic):Void;

	/** Sends a media status message to all senders (broadcast).
	 * Applications can use it when they have a custom state change.
	 * It will call googlecast.receiver.MediaManager.prototype.customizedStatusCallback so applications can customize
	 * the status message.
	 * @param includeMedia			Bool	Whether to include media information.
	 * @param @optional requestId	Int		The ID of the request that triggered the status change. May be null. 
	 *										Optional.
	 * @param @optional customData	Dynamic	The status message application-specific custom data. Optional.
	 */
	public function broadcastStatus(includeMedia:Bool, ?requestId:Null<Int>, ?customData:Dynamic):Void;

	/** Sets the IDLE reason. This allows applications that want to force the IDLE state to indicate the reason
	 * that made the player going to IDLE state (a custom error, for example).
	 * The idle reason will be sent in the next status message.
	 * NOTE: Most applications do not need to set this value, it is only needed if they want to make the player
	 * go to IDLE in special circumstances and the default idleReason does not reflect their intended behavior.
	 * @param idleReason 	googlecast.receiver.media.IdleReason
	 *						The reason to be in the IDLE state.
	 */
	public function setIdleReason(idleReason:googlecast.receiver.media.IdleReason):Void;

	/** Sends an error to a specific sender.
	 * @param senderId		String
	 * 						The sender ID.
	 * @param requestId		Int
	 * 						The ID of the incoming request that caused this error.
	 * @param type			googlecast.receiver.media.ErrorType
	 * 						The error type.
	 * @param @optional reason	googlecast.receiver.media.ErrorReason 
	 * 						The error reason. May be null. Optional.
	 * @param @optional customData	Dynamic
	 * 						The error message application-specific custom data. Optional.
	 */
	public function sendError(senderId:String, requestId:Int, type:googlecast.receiver.media.ErrorType, ?reason:googlecast.receiver.media.ErrorReason, ?customData:Dynamic):Void;

	/** Sends a media status message to a specific sender.
	 * @param senderId	String
	 * 					The sender ID.
	 * @param requestId	Int
	 * 					The ID of the incoming request that caused this error.
	 * @param includeMedia	Bool
	 * 					Whether to include media information.
	 * @param @optional customData	Dynamic
	 * 					The status message application-specific custom data. Optional.
	 */
	public function sendStatus(senderId:String, requestId:Int, includeMedia:Bool, ?customData:Dynamic):Void;

	/** Associates a new media element or Player to the media manager.
	 * @param mediaElement	HTMLMediaElement or googlecast.receiver.media.Player
	 * 						The DOM media element (video/audio) or a player that implements the 
	 *						googlecast.receiver.media.Player interface.
	 */
	public function setMediaElement(mediaElement:Dynamic):Void;

	/** When the application overrides onLoad, it should use this method to trigger an error response to the sender.
	 * This is typically due to application-specific verification issues.
	 * @param @optional errorType	googlecast.receiver.media.ErrorType
	 * 								The error type, by default is assumed to be 
	 *								googlecast.receiver.media.ErrorType.LOAD_FAILED, but the application can send an
	 *								INVALID_REQUEST for example if there is customData that does not match some
	 *								criteria.
	 * @param @optional customData	Dynamic
	 * 								The error message application-specific custom data. Optional.
	 * @see googlecast.receiver.media.ErrorType
	 */
	public function sendLoadError(?errorType:googlecast.receiver.media.ErrorType, ?customData:Dynamic):Void;

	/** Sends the new status after a LOAD message has been completed succesfully.
	 * Note: Applications do not normally need to call this API.
	 * When the application overrides onLoad, it may need to manually declare that the LOAD request was sucessful.
	 * The default implementaion will send the new status to the sender when the video/audio element raises
	 * the 'loadedmetadata' event. The default behavior may not be acceptable in a couple scenarios:
	 *  1) When the application does not want to declare LOAD succesful until for example 'canPlay' is raised
	 *     (instead of 'loadedmetadata').
	 *  2) When the application is not actually loading the media element
	 *     (for example if LOAD is used to load an image).
	 * @param @optional customData	Dynamic
	 * 								The status message application-specific custom data.
	 */
	 public function sendLoadComplete(?customData:Dynamic):Void;

	/** Resets Media Element to IDLE state. After this call the mediaElement properties will change, paused will be true, currentTime will be zero and the src attribute will be empty. This only needs to be manually called if the developer wants to override the default behavior of onError, onStop or onEnded, for example.
	 * @param @optional idleReason	googlecast.receiver.media.IdleReason 
	 * 								The reason to be IDLE.
	 * @param @optional broadcast	Bool
	 * 								Whether the senders should be notified about the change
	 *								(if not provided, the senders will be notified).
	 * @param @optional requestId	Int
	 * 								If the status change is due to a sender request (for example STOP),
	 *								this is the ID of the sender request that will be added to the status message 
	 *								so the sender can identify it. May be null.
	 * @param @optional broadcastStatusCustomData	Dynamic
	 * 								If the senders should be notified, this parameter allows to set the
	 *								application-specific custom data in the status message.
	 * @throws Error				If broadcastStatusCustomData is provided but broadcast is false.
	 */
	public function resetMediaElement(?idleReason:googlecast.receiver.media.IdleReason,
		?broadcast:Bool,
		?requestId:Int,
		?broadcastStatusCustomData:Dynamic):Void;

}

/** Event dispatched by googlecast.receiver.MediaManager which contains system information. */
@:native("cast.receiver.MediaManager.Event")
extern class Event{
	/** Request data associated with this event. */
	public var data:googlecast.receiver.MediaManager.RequestData;
	/** The ID of the sender that triggered the event. */
	public var senderId:String;
	public function new(type:String, data:RequestData, senderId:String);
}

/** Load Request Information. Extends googlecast.receiver.MediaManager.RequestData. */
@:native("cast.receiver.MediaManager.LoadInfo")
extern class LoadInfo {
	/** Request data associated with this load request. */
	public var message:googlecast.receiver.MediaManager.LoadRequestData;
	/** The ID of the sender that triggered the event. */
	public var senderId:String;
	public function new(message:LoadRequestData, senderId:String);
}

/** Media event LOAD request data. Extends googlecast.receiver.MediaManager.RequestData. */
@:native("cast.receiver.MediaManager.LoadRequestData")
extern class LoadRequestData {
	/** If the autoplay parameter is specified, the media player will begin playing the content when it is loaded. */
	public var autoplay:Null<Bool>;
	/** Seconds since beginning of content. */
	public var currentTime:Null<Float>;
	/** If the autoplay parameter is specified, the media player will begin playing the content when it is loaded. */
	public var media:googlecast.receiver.media.MediaInformation;
	public function new();
}

/** Media event request data. */
@:native("cast.receiver.MediaManager.RequestData")
extern class RequestData{
	/** Application-specific data for this request. */
	public var customData:Dynamic;
	/** Id of the media session that the request applies to. */
	public var mediaSessionId:Null<Float>;
	/** Id of the request, used to correlate request/response. */
	public var requestId:Int;
	public function new();
}

/** Media event SEEK request data. Extends googlecast.receiver.MediaManager.RequestData.*/
@:native("cast.receiver.MediaManager.SeekRequestData")
extern class SeekRequestData{
	/** Seconds since beginning of content.*/
	public var currentTime:Float;
	/** The playback state after a SEEK request.*/
	public var resumeState:googlecast.receiver.media.SeekResumeState;
	public function new();
}

/** Media event SET_VOLUME request data. Extends googlecast.receiver.MediaManager.RequestData. */
@:native("cast.receiver.MediaManager.VolumeRequestData")
extern class VolumeRequestData {
	/** The media stream volume. */
	public var volume:googlecast.receiver.media.Volume;
	public function new();
}

@:fakeEnum(Int)
@:native("cast.receiver.MediaManager.EventType")
extern enum MediaManagerEventType {
	/** Fired when there is a load message. */
	LOAD;
	/** Fired when there is a stop message. */
	STOP;
	/** Fired when there is a pause message. */
	PAUSE;
	/** Fired when there is a play message. */
	PLAY;
	/** Fired when there is a seek message. */
	SEEK;
	/** Fired when there is a set volume message. */
	SET_VOLUME;
	/** Fired when there is a get status message. */
	GET_STATUS;
}