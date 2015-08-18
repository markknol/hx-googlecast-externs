package googlecast;

@:native("chrome.cast.Error")
extern class CastError 
{
	///The error code. Must not be null.
	public var code:CastErrorCode;
	
	///Human readable description of the error. May be null.
	public var description:Null<String>;
	
	///Details specific to the error. The description of the error code will include the format of the object if one is set.
	public var details:Null<Dynamic>;
	
	public function new(code:CastErrorCode, opt_description:Null<String>, opt_details:Null<Dynamic>);
}