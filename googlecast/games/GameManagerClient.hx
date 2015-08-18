package googlecast.games;
import googlecast.Session;

/**
 * Used to allow a sender to interact with the cast game manager running on the receiver. Keeps track of player, game, and lobby state information and can send requests to the game manager on the receiver.
 */
@:native("chrome.cast.games.GameManagerClient")
extern class GameManagerClient
{
	/**
	* Asynchronously obtains a GameManagerClient instance for the given cast session. The successCallback will be called with a result object that contains the GameManagerClient after initialization is completed successfully.
	*/
	public static function getInstanceFor(session:Session, ?successCallback:GameManagerInstanceResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Disposes this object, releasing all used resources.
	*/
	public function dispose():Void;

	/**
	* Returns whether this client has already been disposed.
	*/
	public function isDisposed():Bool;

	/**
	* Sends a request to the receiver to transition the last used player by this sender into chrome.cast.games.PlayerState.AVAILABLE.
	*/
	public function sendPlayerAvailableRequest(?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a request to the receiver to transition the last used player by this sender into chrome.cast.games.PlayerState.READY state.
	*/
	public function sendPlayerReadyRequest(?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a request to the receiver to transition the last used player by this sender into chrome.cast.games.PlayerState.IDLE state.
	*/
	public function sendPlayerIdleRequest(?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a request to the receiver to transition the last used player by this sender into chrome.cast.games.PlayerState.PLAYING state.
	*/
	public function sendPlayerPlayingRequest(?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a request to the receiver to transition the last used player by this sender into chrome.cast.games.PlayerState.QUIT state.
	*/
	public function sendPlayerQuitRequest(?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a game specific message to the receiver, its contents entirely up to the application.
	*/
	public function sendGameRequest(?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a game specific message to the receiver, its contents entirely up to the application.
	*/
	public function sendGameRequestWithPlayerId(playerId:String, ?extraMessageData:Dynamic, ?successCallback:GameManagerResult->Void, ?errorCallback:GameManagerError->Void):Void;

	/**
	* Sends a game specific message to the receiver, its contents entirely up to the application.
	*/
	public function sendGameMessage(?extraMessageData:Dynamic):Void;

	/**
	* Sends a game specific message to the receiver, its contents entirely up to the application.
	*/
	public function sendGameMessageWithPlayerId(playerId:String, ?extraMessageData:Dynamic):Void;

	/**
	* Adds a listener for a game manager event type.
	*/
	public function addEventListener(type:GameManagerEventType, listener:GameManagerEvent->Void):Void;

	/**
	* Removes a previously added listener for a game manager event type.
	*/
	public function removeEventListener(type:GameManagerEventType, listener:GameManagerEvent->Void):Void;

	/**
	* Returns the current state of the game manager.
	* This method will throw an error if this GameManagerClient has been disposed.
	*/
	public function getCurrentState():GameManagerState;

	/**
	* Returns the last controllable player ID used by this sender or null if there is no known last controllable player ID. Useful for the common case when there is only one player per sender.
	*/
	public function getLastUsedPlayerId():String;
}