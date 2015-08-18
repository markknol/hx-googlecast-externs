package googlecast.games;

/**
 * Immutable class to represent a snapshot of the game manager state.
 */
@:native("chrome.cast.games.GameManagerState")
extern class GameManagerState
{
	//public function new(applicationName, maxPlayers, lobbyState, gameplayState, gameData, gameStatusText, players);

	public var applicationName:String;
	public var maxPlayers:Int;
	public var lobbyState:LobbyState;
	public var gameplayState:GameplayState;
	public var gameData:Dynamic;
	public var gameStatusText:String;
	public var players:Array<PlayerInfo>;

	public function getListOfChangedPlayers(otherState:GameManagerState):Array<String>;
	public function hasGameDataChanged(otherState:GameManagerState):Bool;
	public function hasGameplayStateChanged(otherState:GameManagerState):Bool;
	public function hasGameStatusTextChanged(otherState:GameManagerState):Bool;
	public function hasLobbyStateChanged(otherState:GameManagerState):Bool;
	public function hasPlayerChanged(playerId:String, otherState:GameManagerState):Bool;
	public function hasPlayerDataChanged(playerId:String, otherState:GameManagerState):Bool;
	public function hasPlayerStateChanged(playerId:String, otherState:GameManagerState):Bool;
	public function equals(otherState:GameManagerState):Bool;

	public function getApplicationName():String;
	public function getConnectedControllablePlayers():Array<PlayerInfo>;
	public function getConnectedPlayers():Array<PlayerInfo>;
	public function getControllablePlayers():Array<PlayerInfo>;
	public function getGameData():Dynamic;
	public function getGameplayState():GameplayState;
	public function getGameStatusText():String;
	public function getLobbyState():LobbyState;
	public function getMaxPlayers():Int;
	public function getPlayer(playerId:String):PlayerInfo;
	public function getPlayers(playerId:String):Array<PlayerInfo>;
	public function getPlayersInState(playerState:PlayerState):Array<PlayerInfo>;

}