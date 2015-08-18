package googlecast;

/** 
 * Describes status of a Cast session to its receiver application.  
 */
@:fakeEnum(Int)
@:native("chrome.cast.SessionStatus")
extern enum SessionStatus 
{
	///The session is connected to the receiver application.
	CONNECTED;
	
	///The session is disconnected from the receiver application.
	DISCONNECTED; 
	
	///The receiver application has been stopped.
	STOPPED;
}