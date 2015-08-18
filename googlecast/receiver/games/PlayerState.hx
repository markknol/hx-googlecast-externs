package googlecast.receiver.games;

/**
 * Represents the player states.
 */
@:fakeEnum(Int)
@:native("cast.receiver.games.PlayerState")
extern enum PlayerState 
{
	/** 
	* The player is connected to the receiver and available to join a game.
	*/ 
	AVAILABLE;

	/** 
	* The player is not connected to the receiver because of a network drop.
	*/ 
	DROPPED;

	/** 
	* The player is in the game and idle.
	*/ 
	IDLE;

	/** 
	* The player is in the game and actively playing.
	*/ 
	PLAYING;

	/** 
	* The player has manually chosen to disconnect from the receiver.
	*/ 
	QUIT;

	/** 
	* The player is able to join the game and is ready to enter the game.
	*/ 
	READY;

	/** 
	* Unknown player state.
	*/ 
	UNKNOWN;
}

class PlayerStateUtil
{
	public inline static function toString(state:PlayerState) return switch(state)
	{
		case AVAILABLE: "AVAILABLE";
		case DROPPED: "DROPPED";
		case IDLE: "IDLE";
		case PLAYING: "PLAYING";
		case QUIT: "QUIT";
		case READY: "READY";
		case UNKNOWN: "UNKNOWN";
		default: "??";
	}
}