package googlecast.games;

/**
 * Result of a game manager request to the receiver.
 */
@:native("chrome.cast.games.GameManagerResult")
extern class GameManagerResult
{
	//public function new(playerId, requestId, extraMessageData);
	/**
	 * Player ID of the request.
	 */
	public var playerId:String;

	/**
	 * Request ID for the request this is a response to.
	 */
	public var requestId:Int;

	/**
	 * Application-specific JSON serializable data sent by the game manager or null.
	 */
	public var extraMessageData:Dynamic;
}