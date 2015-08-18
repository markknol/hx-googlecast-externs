package googlecast;
import googlecast.Capability;
import googlecast.ReceiverDisplayStatus;
import googlecast.ReceiverType;
import googlecast.Volume;

/**
 * Describes the receiver running an application. Normally, these objects should not be created by the client. 
 */
@:native("chrome.cast.Receiver")
extern class Receiver
{
	/// The capabilities of the receiver, for example audio and video.
	public var capabilities:Array<Capability>;
	
	///Receiver status shown to the user in the extension UI. Only valid for CUSTOM receivers. To show the receiver as idle, set displayStatus to null. 
	public var displayStatus:ReceiverDisplayStatus;
	
	///The user given name for the receiver.
	public var friendlyName:String;
	
	///An identifier for the receiver that is unique to the browser profile and the origin of the API client. It is stable across browser restarts, but may change if the user clears his local storage. 
	public var label:String;
	
	///The type of receiver device. Mandatory. 
	public var receiverType:ReceiverType;
	
	///The current volume of the receiver. If non-null, the volume's level and muted properties will always be set. 
	public var volume:Volume;
	
	
	/**
	 * Describes the receiver running an application. Normally, these objects should not be created by the client. 
	 * @param	label An identifier for the receiver. 
	 * @param	friendlyName The user-visible name of the receiver. 
	 * @param	opt_capabilities Set of receiver capabilities. Optional. 
	 * @param	opt_volume The receiver's current volume. Optional. 
	 */
	public function new(label:String, friendlyName:String, ?opt_capabilities:Array<Capability>, ?opt_volume:Volume);
}
