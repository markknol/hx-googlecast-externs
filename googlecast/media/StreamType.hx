package googlecast.media;

@:fakeEnum(Int)
@:native("chrome.cast.media.StreamType")
extern enum StreamType 
{
	///Stored media streamed from an existing data store.
	BUFFERED; 
	
	///Live media generated on the fly.
	LIVE;
	
	///None of the above.
	OTHER;
}