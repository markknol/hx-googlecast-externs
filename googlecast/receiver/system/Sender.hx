package googlecast.receiver.system;

/** Represents the data of a connected sender device. */
@:native("cast.receiver.system.Sender")
extern class Sender {
	/** The sender Id. */
	public var id:String;
	/** The userAgent of the sender. */
	public var userAgent:String;
	public function new();
}