package googlecast;

/**
 * Receiver status shown to the user in the extension UI. Only valid for CUSTOM receivers. 
 */
@:native("chrome.cast.ReceiverDisplayStatus")
extern class ReceiverDisplayStatus 
{
	/// Descriptive text for the current application content, for example “My Wedding Slideshow”.
	public var statusText:String;
	
	/// Array of images available describing the application. 
	public var appImages:Array<Image>;
	
	/**
	 * Receiver status shown to the user in the extension UI. Only valid for CUSTOM receivers. 
	 * @param	statusText Description of current application status in plain text, for example, name of the content being shown. 
	 * @param	appImages Images associated with the app. Must not be null. 
	 */
	public function new(statusText:String, appImages:Array<Image>);
}