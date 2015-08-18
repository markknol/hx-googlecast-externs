package googlecast.receiver;

/** Handles cast messages for a specific namespace.
  * Applications should never create a CastMessageBus,
  * they should only be obtained from the cast.receiver.CastReceiverManager instance.
  * Extends goog.events.EventTarget. Implements EventTarget.
  */
 @:native("cast.receiver.CastMessageBus")
extern class CastMessageBus {
	/** Deserializes a serialized message. */
	public var deserializeMessage:String->Dynamic;
	/** Serializes a deserialized message. */
	public var serializeMessage:Dynamic->String;
	/** Event handler for cast.receiver.CastMessageBus message event. */
	public var onMessage:CastMessageBusEvent->Void;
	/** The namespace of the messages processed by this CastMessageBus */
	public function getNamespace():String;
	/** The type of messages processed by this CastMessageBus. */
	public function getMessageType():MessageType;
	/** Sends a message to a specific sender. */
	public function send(senderId:String, message:Dynamic):Void;
	/** Sends a message to all the senders connected. */
	public function broadcast(message:Dynamic):Void;
	/** Provides a {cast.receiver.CastChannel} for a specific senderId. */
	public function getCastChannel(senderId:String):CastChannel;
}

/** Event which contains the event raised when a new message is received 
 * on the message bus for a specific namespace. Extends goog.events.Event.
 */
 @:native("cast.receiver.CastMessageBus.Event")
extern class CastMessageBusEvent {
	/** Application message. */
	public var data:Dynamic;
	/** The sender Id. */
	public var senderId:String;
	public function new(type:CastMessageBusEventType, senderId:String, data:Dynamic);
}

/** Events dispatched by cast.receiver.CastMessageBus. */
@:fakeEnum(Int)
@:native("cast.receiver.CastMessageBus.EventType")
extern enum CastMessageBusEventType {
	/** Fired when there is a message. */
	MESSAGE;
}

/** Message types used by cast.receiver.CastMessageBus. */
@:fakeEnum(Int)
@:native("cast.receiver.CastMessageBus.MessageType")
extern enum MessageType {
	/** Messages are strings. */
	STRING;
	/** Messages are JSON-encoded. */
	JSON;
	/** Messages are CUSTOM-encoded.
	  * The application must implement CastMessageBus.serializeMessage and CastMessageBus.deserializeMessage
	  */
	CUSTOM;
}