package googlecast.receiver;

import googlecast.receiver.CastMessageBus;
import googlecast.receiver.CastMessageBus.MessageType;
import googlecast.receiver.system.ApplicationData;
import googlecast.receiver.system.Sender;

/** Initializes the system manager so we can communicate with the platform.
  * This class is used to send/receive system messages/events.
  * It must only be instantiated just once (singleton).
  * Extends goog.events.EventTarget. Implements EventTarget.
  */
@:native("cast.receiver.CastReceiverManager")
extern class CastReceiverManager {
	/** Initializes the system manager so we can communicate with the platform.
	  * This class is used to send/receive system messages/events.
	  * It must only be instantiated just once (singleton).
	  */
	public function new();
	/** If provided, it processes the 'ready' event. */
	public var onReady:CastReceiverManagerEvent->Void;
	/** If provided, it processes the 'senderconnected' event. */
	public var onSenderConnected:CastReceiverManagerEvent->Void;
	/** If provided, it processes the 'senderdisconnected' event. */
	public var onSenderDisconnected:CastReceiverManagerEvent->Void;
	/** If provided, it processes the 'systemvolumechanged' event. */
	public var onSystemVolumeChanged:CastReceiverManagerEvent->Void;
	/** If provided, it processes the 'visibilitychanged' event. */
	public var onVisibilityChanged:CastReceiverManagerEvent->Void;
	/** Initializes the system manager. */
	public function start(?config:Config):Void;
	/** Terminates the application. */
	public function stop():Void;
	/** When the application calls start, the system will send the ready event to indicate
	  * that the application information is ready and the application can send messages as
	  * soon as there is one sender connected. */
	public function isSystemReady():Bool;
	/** Provides a list of the senders currently connected to the application. */
	public function getSenders():Array<String>;
	/** Provides a copy of the sender object by senderId. */
	public function getSender(senderId:String):Sender;
	/** Provides application information once the system is ready, otherwise it will be null. */
	public function getApplicationData():ApplicationData;
	/** Sets the application state. */
	public function setApplicationState(statusText:String):Void;
	/** Provides a channel for a specific namespace (for any sender). */
	public function getCastMessageBus(namespace:String, ?messageType:MessageType):CastMessageBus;

	public static function getInstance():CastReceiverManager;
}

/** Application configuration parameters. */
@:native("cast.receiver.CastReceiverManager.Config")
extern class Config {
	/** Maximum time in seconds before closing an idle sender connection.
	  * Setting this value enables a heartbeat message to keep the connection alive.
	  * Used to detect unresponsive senders faster than typical TCP timeouts
	  * The minimum value is 5 seconds, there is no upper bound enforced but practically
	  * it's minutes before platform TCP timeouts come into play. Default value is 10 seconds.
	  */
	public var maxInactivity:Int;
	/** Text that represents the application status. It should meet internationalization
	  * rules as may be displayed by the sender application.
	  */
	public var statusText:String;
	public function new();
}

/** Event dispatched by cast.receiver.CastReceiverManager which contains system information. Extends goog.events.Event. */
@:native("cast.receiver.CastReceiverManager.Event")
extern class CastReceiverManagerEvent
{
	/** Data associated with this event. */
	public var data:Dynamic;
	/** Event dispatched by cast.receiver.CastReceiverManager which contains system information. */
	public function new(type:CastReceiverManagerEventType, data:Dynamic);
}

/** System events dispatched by cast.receiver.CastReceiverManager. */
@:fakeEnum(String)
@:native("cast.receiver.CastReceiverManager.EventType")
extern enum CastReceiverManagerEventType {
	/** Fired when the system is ready. */
	READY;
	/** Fired when the system is terminated. */
	SHUTDOWN;
	/** Fired when a new sender has connected. */
	SENDER_CONNECTED;
	/** Fired when a sender has disconnected. */
	SENDER_DISCONNECTED;
	/** Fired when there is a system error. */
	ERROR;
	/** Fired when the system volume has changed. */
	SYSTEM_VOLUME_CHANGED;
	/** Fired when the visibility of the application has changed
	  * (for example after a HDMI Input change or when the TV is turned off/on
	  * and the cast device is externally powered).
	  * Note that this API has the same effect as the webkitvisibilitychange event
	  * raised by your document, we provided it as CastReceiverManager API for convenience
	  * and to avoid a dependency on a webkit-prefixed event. */
	VISIBILITY_CHANGED;
}