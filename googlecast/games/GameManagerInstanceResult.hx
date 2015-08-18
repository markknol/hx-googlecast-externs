package googlecast.games;

/**
 * Result of a game manager getInstanceFor request.
 */
@:native("chrome.cast.games.GameManagerInstanceResult")
extern class GameManagerInstanceResult
{
	public function new(playerId:String, requestId:String, ?extraMessageData:Dynamic);

	/**
	* The game manager client, ready to be interacted with.
	*/
	public var gameManagerClient:GameManagerClient;

}