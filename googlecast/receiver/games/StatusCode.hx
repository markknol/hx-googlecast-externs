package googlecast.receiver.games;

/**
 * Represents types of status codes from processing game manager requests.
 */
@:fakeEnum(Int)
@:native("cast.receiver.games.StatusCode")
extern enum StatusCode 
{
	/** 
	* Status code indicating the SDK version in the request does not match the version expected by the game manager.
	*/ 
	INCORRECT_VERSION;

	/** 
	* Status code indicating the request is invalid or contains invalid parameters.
	*/ 
	INVALID_REQUEST;

	/** 
	* Status code indicating that the request was disallowed and could not be completed.
	*/ 
	NOT_ALLOWED;

	/** 
	* Status code indicating no error (success).
	*/ 
	SUCCESS;

	/** 
	* Status code indicating the number of players connected and available on the receiver is greater than the maximum number of players specified in the configuration object for the receiver game.
	*/ 
	TOO_MANY_PLAYERS;
}