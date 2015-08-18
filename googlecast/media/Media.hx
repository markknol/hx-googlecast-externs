package googlecast.media;
import googlecast.receiver.media.PlayerState;
import googlecast.Volume;
import haxe.io.Error;

/**
 * Represents a media item that has been loaded into the receiver application. 
 */
@:native("chrome.cast.media.Media")
extern class Media 
{
	///List of IDs corresponding to the active Tracks.	
	public var activeTrackIds:Array<Int>;

	///The current playback position in seconds since the start of the media.
	public var currentTime:Float;

	///Custom data set by the receiver application.
	public var customData:Dynamic;

	///Idle reason if receiver knows.
	public var idleReason:IdleReason;

	///Media description.
	public var media:MediaInfo;

	///Identifies the media item.
	public var mediaSessionId:Int;

	///The playback rate.
	public var playbackRate:Float;

	///The player state.
	public var playerState:PlayerState;

	///Identifies the session that is hosting the media.
	public var sessionId:String;

	///The media commands supported by the media player.
	public var supportedMediaCommands:Array<MediaCommand>;

	///The media stream volume.
	public var volume:Volume;
	
	public function new(sessionId:String, mediaSessionId:Int);
	
	///Gets the status of the media item from the receiver application.	
	public function getStatus(getStatusRequest:GetStatusRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Plays the media item.
	public function play(playRequest:PlayRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Pauses the media item.
	public function pause(pauseRequest:PauseRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Seeks the media item.
	public function seek(seekRequest:SeekRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Stops the media player.
	public function stop(stopRequest:StopRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Sets the media stream volume.
	public function setVolume(volumeRequest:VolumeRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Modifies the text tracks style or change the tracks status.
	public function editTracksInfo(editTracksInfoRequest:EditTracksInfoRequest, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	///Determines whether the media player supports the given media command.
	public function supportsCommand(command:MediaCommand):Bool;

	///Estimates the current playback position based on the last information reported by the receiver.
	public function getEstimatedTime():Float;

	///Adds a listener that is invoked when the status of the media has changed. The listener to add. The parameter indicates whether the Media object is still alive. 
	public function addUpdateListener(listener:Bool->Void):Void;

	///Removes a previously added listener for this Media.
	public function removeUpdateListener(listener:Bool->Void):Void;
}