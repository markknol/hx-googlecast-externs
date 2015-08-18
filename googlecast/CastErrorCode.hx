package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.ErrorCode")
extern enum CastErrorCode 
{
	///The API is not initialized.
	API_NOT_INITIALIZED;

	///The operation was canceled by the user.
	CANCEL;

	///A channel to the receiver is not available.
	CHANNEL_ERROR;

	///The Cast extension is not available.
	EXTIONSION_MISSING;

	///The API script is not compatible with the installed Cast extension.
	EXTENSION_NOT_COMPATIBLE;

	///The parameters to the operation were not valid.
	INVALID_PARAMETER;

	///Load media failed.
	LOAD_MEDIA_FAILED;

	///No receiver was compatible with the session request.
	RECEIVER_UNAVAILABLE;

	///A session could not be created, or a session was invalid.
	SESSION_ERROR;

	///The operation timed out.
	TIMEOUT;
}