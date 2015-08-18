package googlecast.games;

/**
 *
 */
@:native("chrome.cast.games.GameManagerGameMessageReceivedEvent")
extern class GameManagerGameMessageReceivedEvent
{
	//public function new(playerId, gameMessage);

	/**
	 * The game message sent from the receiver.
	 */
	public var playerId:String;

	/**
	 * The player ID associated with the game message.
	 */
	public var gameMessage:Dynamic;

	/**
	 * The type of event.
	 */
	public var type:GameManagerEventType;
}