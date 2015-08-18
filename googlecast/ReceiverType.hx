package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.ReceiverType")
extern enum ReceiverType 
{
	///Cast receiver, e.g.
	CAST;
	
	///Custom receiver provided by client
	CUSTOM;
	
	///Hangout
	HANGOUT;
}