package utils;
/*
hiscumm
-----------


*/

#if neko
import neko.io.File;
typedef ToolSeekable = Dynamic;
#else !neko
import utils.Seekable;
typedef ToolSeekable = Seekable;
#end

class SeekableTools
{
	public static function getSeekableLength(s : ToolSeekable) : Int
	{
		var old_pos = s.tell();
		s.seek(0, SeekEnd);
		var new_pos = s.tell();
		s.seek(old_pos, SeekBegin);
		return new_pos;
	}
}