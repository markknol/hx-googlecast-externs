package googlecast.receiver.games;

/**
 * Represents player information maintained by the game manager.
 */
@:native("cast.receiver.games.PlayerInfo")
extern class PlayerInfo 
{
	public function new();
	
	/** 
	* Player-specific string of data defined by the game.
	*/ 
	public var playerData:Dynamic;

	/** 
	* The unique string identifier for this player.
	*/ 
	public var playerId:String;

	/** 
	* The current state of the player.
	*/ 
	public var playerState:PlayerState;
}