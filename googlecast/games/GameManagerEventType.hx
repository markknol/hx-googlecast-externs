package googlecast.games;

/**
 * Event types dispatched by chrome.cast.games.GameManagerClient.
 */
@:fakeEnum(Int)
@:native("chrome.cast.games.GameManagerEventType")
extern enum GameManagerEventType
{
	/**
	* Triggered by chrome.cast.games.GameManagerClient when the state of the currently running game has changed. The listener for this event will use chrome.cast.games.GameManagerStateChangedEvent.
	*/
	STATE_CHANGED;

	/**
	* Triggered by chrome.cast.games.GameManagerClient when the receiver sends a game message for a specific player. The listener for this event will use chrome.cast.games.GameManagerGameMessageReceivedEvent.
	*/
	GAME_MESSAGE_RECEIVED;

	/**
	* The event is undefined.
	*/
	UNKNOWN;

}