package googlecast;
import googlecast.media.LoadRequest;
import googlecast.media.Media;
import googlecast.Receiver;

/**
 * Describes the state of a currently running Cast application. Normally, these objects should not be created by the client.
 */
@:native("chrome.cast.Session")
extern class Session 
{
	public var appId:String;
	public var appImages:Array<Image>;
	public var displayName:String;
	public var media:Array<Media>;
	public var namespaces:Array<ChromeNamespace>;
	public var receiver:Receiver;
	public var senderApps:Array<SenderApplication>;
	public var sessionId:String;
	public var status:SessionStatus;
	public var statusText:Null<String>;
	
	public function new(sessionId:String, appId:String, displayName:String, appImages:Array<Image>, receiver:Receiver);

	/// Sets the receiver volume.	
	public function setReceiverVolumeLevel(newLevel:Float, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	/// Sets the receiver volume.
	public function setReceiverMuted(muted:Bool, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	/// Leaves (disconnects) from the running receiver application associated with the session.
	public function leave(successCallback:Void->Void, errorCallback:CastError->Void):Void;

	/// Stops the running receiver application associated with the session.
	public function stop(successCallback:Void->Void, errorCallback:CastError->Void):Void;

	/// Sends a message to the receiver application on the given namespace.
	public function sendMessage(namespace:String, message:Dynamic, successCallback:Void->Void, errorCallback:CastError->Void):Void;

	/// Adds a listener that is invoked when the Session has changed.
	public function addUpdateListener(listener:Bool->Void):Void;

	/// Removes a previously added listener for this Session.
	public function removeUpdateListener(listener:Bool->Void):Void;

	/// Adds a listener that is invoked when a message is received from the receiver application.
	public function addMessageListener(namespace:String, listener:String->String->Void):Void;

	/// Removes a previously added listener for messages.
	public function removeMessageListener(namespace:String, listener:String->String->Void):Void;

	/// Adds a listener that is invoked when a media session is created by another sender.
	public function addMediaListener(listener:Media->Void):Void;

	/// Removes a listener that was previously added with addMediaListener.
	public function removeMediaListener(listener:Media->Void):Void;

	/// Loads media into a running receiver application.
	public function loadMedia(loadRequest:LoadRequest, successCallback:Media->Void, errorCallback:CastError->Void):Void;
}

typedef ChromeNamespace = {name:String};