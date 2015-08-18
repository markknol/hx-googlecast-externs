package googlecast.games;

/**
 * Game SDK specific error codes returned by the receiver that extend the codes from chrome.cast.ErrorCode.
 */
@:fakeEnum(Int)
@:native("chrome.cast.games.GameManagerErrorCode")
extern enum GameManagerErrorCode 
{
	/** 
	* Error code indicating the SDK version in the request does not match the version expected by the game manager.
	*/ 
	INCORRECT_VERSION;

	/** 
	* Error code indicating the request is invalid or contains invalid parameters.
	*/ 
	INVALID_REQUEST;

	/** 
	* Error code indicating that the request was disallowed and could not be completed.
	*/ 
	NOT_ALLOWED;

	/** 
	* Error code indicating the number of players connected and available on the receiver is greater than the maximum number of players specified in the configuration object for the receiver game.
	*/ 
	TOO_MANY_PLAYERS;
}