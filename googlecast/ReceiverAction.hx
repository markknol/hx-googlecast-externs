package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.ReceiverAction")
extern enum ReceiverAction 
{
	///The user selected a receiver with the intent of casting to it with the sender application. The exact identity of the receiver may not be known. 
	CAST;
	///The user requested to stop the session running on a receiver.
	STOP;
}