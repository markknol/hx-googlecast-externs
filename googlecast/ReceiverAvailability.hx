package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.ReceiverAvailability")
extern enum ReceiverAvailability 
{
	AVAILABLE; UNAVAILABLE;
}