package googlecast.receiver.games;

/**
 * Used by the constructor of cast.receiver.games.GameManager to configure the game manager.
 */
@:native("cast.receiver.games.GameManagerConfig")
extern class GameManagerConfig 
{
	public function new();
	
	/** 
	* The name of the application.
	*/ 
	public var applicationName:String;

	/** 
	* The maximum number of players that can be connected to the game at once.
	*/ 
	public var maxPlayers:Float;

}