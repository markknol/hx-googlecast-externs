package googlecast.receiver.media;

/** Represents the stream types. */
@:fakeEnum(Int)
@:native("cast.receiver.media.StreamType")
extern enum StreamType {
	BUFFERED;
	LIVE;
	NONE;
}