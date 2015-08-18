package googlecast.receiver.games;

/**
 * Event types dispatched by cast.receiver.games.GameManager.
 */
@:fakeEnum(Int)
@:native("cast.receiver.games.EventType")
extern enum EventType 
{
	/** 
	* Fired when the game manager receives a request that changes game data.
	*/ 
	GAME_DATA_CHANGED;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.LOADING.
	*/ 
	GAME_LOADING;

	/** 
	* Fired when the game manager receives a game specific message.
	*/ 
	GAME_MESSAGE_RECEIVED;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.PAUSED.
	*/ 
	GAME_PAUSED;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.RUNNING.
	*/ 
	GAME_RUNNING;

	/** 
	* Fired when the game manager receives a request that changes gameplay state to cast.receiver.games.GameplayState.SHOWING_INFO_SCREEN.
	*/ 
	GAME_SHOWING_INFO_SCREEN;

	/** 
	* Fired when the game manager receives a request that changes game status text.
	*/ 
	GAME_STATUS_TEXT_CHANGED;

	/** 
	* Fired when the game manager receives a request that changes lobby state to cast.receiver.games.LobbyState.CLOSED.
	*/ 
	LOBBY_CLOSED;

	/** 
	* Fired when the game manager receives a request that changes lobby state to cast.receiver.games.LobbyState.OPEN.
	*/ 
	LOBBY_OPEN;

	/** 
	* Fired when the game manager receives a request that changes the player state to cast.receiver.games.PlayerState.AVAILABLE.
	*/ 
	PLAYER_AVAILABLE;

	/** 
	* Fired when the game manager receives a request that changes player data.
	*/ 
	PLAYER_DATA_CHANGED;

	/** 
	* Fired when the game manager receives a request that changes the player state to cast.receiver.games.PlayerState.DROPPED.
	*/ 
	PLAYER_DROPPED;

	/** 
	* Fired when the game manager receives a request that changes the player state to cast.receiver.games.PlayerState.IDLE.
	*/ 
	PLAYER_IDLE;

	/** 
	* Fired when the game manager receives a request that changes the player state to cast.receiver.games.PlayerState.PLAYING.
	*/ 
	PLAYER_PLAYING;

	/** 
	* Fired when the game manager receives a request that changes the player state to cast.receiver.games.PlayerState.QUIT.
	*/ 
	PLAYER_QUIT;

	/** 
	* Fired when the game manager receives a request that changes the player state to cast.receiver.games.PlayerState.READY.
	*/ 
	PLAYER_READY;

	/** 
	* The event is undefined.
	*/ 
	UNKNOWN;

}