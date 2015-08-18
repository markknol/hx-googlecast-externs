package googlecast.games;

/**
 * Event types dispatched by chrome.cast.games.GameManagerClient.
 *
 * GameManagerEvent is an interface which doesn't get docs generated exclusively.
 * https://groups.google.com/forum/#!topic/cast-games-sdk-eap/-LcbxwBVEzw
 */
@:native("chrome.cast.games.GameManagerStateChangedEvent")
extern class GameManagerStateChangedEvent
{
	/**
	 * The type of event.
	 */
	public var type:GameManagerEventType;

	/**
	 * GameManagerEventType.GAME_DATA_CHANGED
	 */
	public var currentState:GameManagerState;

	/**
	 * GameManagerEventType.GAME_DATA_CHANGED
	 */
	public var previousState:GameManagerState;
}