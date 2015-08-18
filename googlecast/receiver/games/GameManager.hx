package googlecast.receiver.games;

/**
 * Used to determine who is connected to the receiver, who is ready to play, and who is playing the game on the receiver. Implements cast.receiver.games.GameManagerListener.
 */
@:native("cast.receiver.games.GameManager")
extern class GameManager 
{
	public function new(config:GameManagerConfig);
	
	/** 
	* Sends a game message to a specific player.
	*/ 
	public function sendGameMessageToPlayer(playerId:String, message:Dynamic):Void;

	/** 
	* Sends a game message to multiple players.
	*/ 
	public function sendGameMessageToPlayers(playerIds:Array<String>, message:Dynamic):Void;

	/** 
	* Sends a game message to all connected players.
	*/ 
	public function sendGameMessageToAllConnectedPlayers(message:Dynamic):Void;

	/** 
	* Gets a specific player with a given player ID.
	*/ 
	public function getPlayer(playerId:String):PlayerInfo;

	/** 
	* Gets player IDs associated with a given sender ID.
	*/ 
	public function getPlayerIdsWithSenderId(senderId:String, ?result:Dynamic):Array<String>;

	/** 
	* Gets the sender ID with a given player ID.
	*/ 
	public function getSenderIdWithPlayerId(playerId:String):String;

	/** 
	* Returns a list of all players.
	*/ 
	public function getPlayers(?result:Array<PlayerInfo>):Array<PlayerInfo>;

	/** 
	* Returns a list of all players in a connected state.
	*/ 
	public function getConnectedPlayers(?result:Array<PlayerInfo>):Array<PlayerInfo>;
	
	/** 
	* Returns whether a player is in a connected state.
	*/ 
	public function isPlayerConnected(playerId:String):Bool;

	/** 
	* Returns a list of players in the provided state.
	*/ 
	public function getPlayersInState(state:PlayerState, ?array:Array<Dynamic>):Array<PlayerInfo>;

	/** 
	* 
	*/ 
	public function getApplicationName():String;

	/** 
	* 
	*/ 
	public function getMaxPlayers():Float;

	/** 
	* 
	*/ 
	public function getGameplayState():GameplayState;

	/** 
	* 
	*/ 
	public function getLobbyState():LobbyState;

	/** 
	* 
	*/ 
	public function getGameData():Dynamic;

	/** 
	* 
	*/ 
	public function getGameStatusText():String;

	/** 
	* Adds an event listener.
	*/ 
	public function addEventListener(type:EventType, listener:Event->Void):Void;

	/** 
	* Removes an event listener.
	*/ 
	public function removeEventListener(type:EventType, listener:Event->Void):Void;

	/** 
	* Adds a listener for all of the game manager events.
	*/ 
	public function addGameManagerListener(listener:Event->Void):Void;

	/** 
	* Removes a listener for all of the game manager events.
	*/ 
	public function removeGameManagerListener(listener:Event->Void):Void;

	/** 
	* Sends the current game manager status to all connected senders.
	*/ 
	public function broadcastGameManagerStatus(exceptSenderId:String):Void;

	/** 
	* Updates the player to the specified player state.
	*/ 
	public function updatePlayerState(playerId:String, playerState:PlayerState, ?extraMessageData:Dynamic, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Simulates how a player sends a game message to the game manager via a sender.
	*/ 
	public function simulateGameMessageFromPlayer(playerId:String, ?extraMessageData:Dynamic, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Updates the lobby state on the game manager.
	*/ 
	public function updateLobbyState(lobbyState:LobbyState, ?extraMessageData:Dynamic, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Updates the gameplay state on the game manager.
	*/ 
	public function updateGameplayState(gameplayState:GameplayState, ?extraMessageData:Dynamic, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Updates game specific player data that is stored while the game is running.
	*/ 
	public function updatePlayerData(playerId:String, playerData:Dynamic, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Updates game specific data that is stored while the game is running.
	*/ 
	public function updateGameData(gameData:Dynamic, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Updates the game status text that is stored while the game is running.
	*/ 
	public function updateGameStatusText(gameStatusText:String, ?noBroadcastUpdate:Bool):GameManagerResult;

	/** 
	* Fired when the game manager receives a request that changes game data (e.g. cast.receiver.games.GameManager.sendGameDataRequest). Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGameDataChanged :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.LOADING. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGameLoading :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a game specific message (e.g. from cast.receiver.games.GameManager.simulateGameMessageFromPlayer). Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGameMessageReceived :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.PAUSED. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGamePaused :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.RUNNING. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGameRunning :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.SHOWING_INFO_SCREEN. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGameShowingInfoScreen :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes game status text. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onGameStatusTextChanged :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes lobby state to cast.receiver.games.LobbyState.CLOSED. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onLobbyClosed :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes lobby state to cast.receiver.games.LobbyState.OPEN. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onLobbyOpen :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player state to cast.receiver.games.PlayerState.AVAILABLE. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerAvailable :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player data (e.g. cast.receiver.games.GameManager.sendPlayerDataRequest). Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerDataChanged :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player state to cast.receiver.games.PlayerState.DROPPED. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerDropped :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player state to cast.receiver.games.PlayerState.IDLE. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerIdle :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player state to cast.receiver.games.PlayerState.PLAYING. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerPlaying :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player state to cast.receiver.games.PlayerState.QUIT. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerQuit :Dynamic->Dynamic;

	/** 
	* Fired when the game manager receives a request that changes player state to cast.receiver.games.PlayerState.READY. Replacing this callback can provide application-specific behavior. 
	*/ 
	public var onPlayerReady :Dynamic->Dynamic;

}