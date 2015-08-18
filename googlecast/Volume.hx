package googlecast;

/** The volume of a device or media stream. */
@:native("chrome.cast.Volume")
extern class Volume {
	/** The current volume level as a value between 0.0 and 1.0. 1.0 is the maximum volume possible on the receiver or stream.  */
	public var level:Null<Float>;
	/** Whether the receiver is muted, independent of the volume level. */
	public var muted:Null<Bool>;
	
	/// The volume of a device or media stream. 
	public function new(?opt_level:Float, ?opt_muted:Bool);
}