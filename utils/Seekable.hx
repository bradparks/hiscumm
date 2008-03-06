package utils;
/*
hiscumm
-----------


*/

enum Seek
{
	SeekEnd;
	SeekCur;
	SeekBegin;
}

interface Seekable
{	
	function seek(p : Int, pos : Seek) : Void;
	function tell() : Int;
}

class SeekableTools
{
	public static function getSeekableLength(s : Seekable) : Int
	{
		var old_pos = s.tell();
		s.seek(0, SeekEnd);
		var new_pos = s.tell();
		s.seek(old_pos, SeekBegin);
		return new_pos;
	}
}