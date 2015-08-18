package googlecast.receiver.media;

@:fakeEnum(Int)
@:native("cast.receiver.media.SeekResumeState")
extern enum SeekResumeState {
	PLAYBACK_PAUSE;
	PLAYBACK_START;
}