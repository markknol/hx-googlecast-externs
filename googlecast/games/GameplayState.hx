package googlecast.games;

/**
 * Represents the game states during gameplay.
 */
@:fakeEnum(Int)
@:native("chrome.cast.games.GameplayState")
extern enum GameplayState 
{
	/**Game state for when the game is loading.*/
	LOADING;
	
	/**Game state for when the game is paused.*/
	PAUSED;
	
	/**Game state for when the game is running.*/
	RUNNING;
	
	/**Game state for when the game is showing an information screen.*/
	SHOWING_INFO_SCREEN;
	
	/**Unknown game state.*/
	UNKNOWN;
}

class GameplayStateUtil
{
	public static function toString(state:GameplayState) return switch(state)
	{
		case LOADING: "LOADING";
		case PAUSED: "PAUSED";
		case RUNNING: "RUNNING";
		case SHOWING_INFO_SCREEN: "SHOWING_INFO_SCREEN";
		case UNKNOWN: "UNKNOWN";
		default: "??";
	}
}