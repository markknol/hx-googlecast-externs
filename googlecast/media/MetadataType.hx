package googlecast.media;

@:fakeEnum(Int)
@:native("chrome.cast.media.MetadataType")
extern enum MetadataType 
{
	///Generic template suitable for most media types.
	GENERIC;
	
	///A full length movie.
	MOVIE;
	
	///A music track.
	MUSIC_TRACK;
	
	///Photo
	PHOTO;
	
	///An episode of a TV series.
	TV_SHOW;
}