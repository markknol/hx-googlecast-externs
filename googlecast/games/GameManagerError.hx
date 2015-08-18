package googlecast.games;

/**
 * Represents an error from the game manager or from the chrome sender SDK.
 */
@:native("chrome.cast.games.GameManagerError")
extern class GameManagerError 
{
	/** 
	* Chrome sender SDK specific error-code.
	*/ 
	public var castError:CastError;

	/** 
	* The type of error.
	*/ 
	public var errorCode:GameManagerErrorCode;

	/** 
	* A human readable error description or null.
	*/ 
	public var errorDescription:String;

	/** 
	* Additional information about the request that triggered this error 
	*/ 
	public var result:GameManagerResult;
	
}