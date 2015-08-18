package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.AutoJoinPolicy")
extern enum AutoJoinPolicy 
{
	ORIGIN_SCOPED; PAGE_SCOPED; TAB_AND_ORIGIN_SCOPED;
}