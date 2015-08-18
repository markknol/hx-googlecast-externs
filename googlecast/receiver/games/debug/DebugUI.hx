package googlecast.receiver.games.debug;

/**
 * A simple UI for debugging a cast.receiver.games.GameManager.
 */
@:native("cast.receiver.games.debug.DebugUI")
extern class DebugUI 
{
	public function new(gameManager:GameManager);
	
	/** 
	* Shows the UI.
	*/ 
	public function open():Void;

	/** 
	* Closes the UI.
	*/ 
	public function close():Void;
}