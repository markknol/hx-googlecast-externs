package googlecast.receiver.games;

/**
 * Represents the status code and error details from processing a game manager request.
 */
@:native("cast.receiver.games.GameManagerResult")
extern class GameManagerResult 
{
	/** 
	* A user-readable string giving more details about the error, if the status code is not SUCCESS.
	*/ 
	public var errorDescription:String;

	/** 
	* Extra message data populated by the event handlers.
	*/ 
	public var extraMessageData:Dynamic;

	/** 
	* The player ID from processing the request.
	*/ 
	public var playerId:String;

	/** 
	* The request ID.
	*/ 
	public var requestId:Float;

	/** 
	* The status code when processing the request.
	*/ 
	public var statusCode:StatusCode;
}