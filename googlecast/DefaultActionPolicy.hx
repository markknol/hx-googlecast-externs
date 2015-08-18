package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.DefaultActionPolicy")
extern enum DefaultActionPolicy 
{
	CAST_THIS_TAB; CREATE_SESSION;
}