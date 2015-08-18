package googlecast.receiver.media;

/** Represents media error message types. */
@:fakeEnum(Int)
@:native("cast.receiver.media.ErrorType")
extern enum ErrorType
{
	/** Returned when the player state is invalid to fulfill the request. */
	INVALID_PLAYER_STATE;
	/** Returned when the request is not valid. */
	INVALID_REQUEST;
	/** Returned when the LOAD request is cancelled by a second incoming LOAD request. */
	LOAD_CANCELLED;
	/** Returned when the LOAD request failed. */
	LOAD_FAILED;
}