package googlecast.media;

/**
 * A generic media description.
 */
@:native("chrome.cast.media.GenericMediaMetadata")
extern class GenericMediaMetadata 
{
	/// Content images.
	public var images:Array<Image>;
	
	/// The type of metadata.
	public var metadataType:MetadataType;
	
	/// ISO 8601 date and/or time when the content was released, e.g.
	public var releaseDate:String;
	
	/// Integer year when the content was released.
	public var releaseYear:Float;
	
	/// Content subtitle.
	public var subtitle:String;
	
	/// Content title.
	public var title:String;
	
	/// The type of metadata.
	public var type:MetadataType;
	
	/// A generic media description.
	public function new();
}