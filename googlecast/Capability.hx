package googlecast;

@:fakeEnum(Int)
@:native("chrome.cast.Capability")
extern enum Capability {
	/** The receiver supports audio input (microphone). */
	AUDIO_IN;
	/** The receiver supports audio output. */
	AUDIO_OUT;
	/** The receiver supports video input (camera). */
	VIDEO_IN;
	/** The receiver supports video output. */
	VIDEO_OUT;
}