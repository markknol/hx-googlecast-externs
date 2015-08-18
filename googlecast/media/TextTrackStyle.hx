package googlecast.media;

/**
 * 
 */
@:native("chrome.cast.media.TextTrackStyle")
extern class TextTrackStyle 
{
	///Background RGBA color, represented as "#RRGGBBAA".	
	public var backgroundColor:Null<String>;

	///Custom application data.
	public var customData:Dynamic;

	///RGBA color for the edge, represented as "#RRGGBBAA".
	public var edgeColor:Null<String>;

	public var edgeType:Null<TextTrackEdgeType>;

	///If the font is not available in the receiver the fontGenericFamily will be used.
	public var fontFamily:Null<String>;

	public var fontGenericFamily:TextTrackFontGenericFamily;

	///The font scaling factor for the text track (the default is 1.0).
	public var fontScale:Float;

	public var fontStyle:Null<TextTrackFontStyle>;

	///Foreground RGBA color, represented as "#RRGGBBAA".
	public var foregroundColor:Null<String>;

	///RGBA color for the window, represented as "#RRGGBBAA".
	public var windowColor:Null<String>;

	///Rounded corner radius absolute value in pixels (px).
	public var windowRoundedCornerRadius:Float;

	///The window concept is defined in CEA-608 and CEA-708, @See http://goo.gl/M3ea0X.
	public var windowType:TextTrackWindowType;

	/**
	 * Describes style information for a text track. Colors are represented as strings “#RRGGBBAA” where XX are the two hexadecimal symbols that represent the 0-255 value for the specific channel/color. It follows CSS 8-digit hex color notation (See http://dev.w3.org/csswg/css-color/#hex-notation).
	 */
	public function new();
}