package googlecast.receiver.games;

/**
 * Event used by cast.receiver.games.GameManager. The constructor has no parameters to allow a pool of events to be pre-allocated. Note that properties are declared via prototype to allow exporting via automatic extern generator.
 */
@:native("cast.receiver.games.Event")
extern class Event 
{
	/** 
	* A user-readable string giving more details about the error, if the status code is not SUCCESS.
	*/ 
	public var errorDescription:String;

	/** 
	* The player information associated with this event if any.
	*/ 
	public var playerInfo:PlayerInfo;

	/** 
	* Application-specific JSON serializable object coming from the request that triggered this event. This corresponds to the extraMessageData parameter that can be set when making a request, both from senders and from the receiver's game manager. Event handlers can use the information contained in this object to modify their behavior. For example, a request changing player state can use this to pass along the player's name to an event handler to update a lobby screen.
	*/ 
	public var requestExtraMessageData:Dynamic;

	/** 
	* Application-specific JSON serializable object that will be set in the result object that corresponds to the request that triggered this event. Such result objects are dependent on the platform where the request originated. If this is a receiver initiated request, the contents of this field will set in the cast.receiver.games.GameManagerResult.extraMessageData field of the result object. Event handlers can set this field. For example, an event handler can set this field to a status code indicating whether the player has provided a valid player name for a lobby screen in response to a player state change.
	*/ 
	public var resultExtraMessageData:Dynamic;

	/** 
	* The status code when processing the request for this event.
	*/ 
	public var statusCode:StatusCode;

	/** 
	* The type of event.
	*/ 
	public var type:EventType;
}