package googlecast.receiver.games;

/**
 * Represents the game lobby states.
 */
@:fakeEnum(Int)
@:native("cast.receiver.games.LobbyState")
extern enum LobbyState 
{
	/** 
	* Lobby is closed and not accepting players.
	*/ 
	CLOSED;

	/** 
	* Lobby is open and accepting players to join.
	*/ 
	OPEN;

	/** 
	* Unknown lobby state.
	*/ 
	UNKNOWN;
}

class LobbyStateUtil
{
	public inline static function toString(state:LobbyState) return switch(state)
	{
		case CLOSED: "CLOSED";
		case OPEN: "OPEN";
		case UNKNOWN: "UNKNOWN";
		default: "??";
	}
}