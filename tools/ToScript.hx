package tools;

/*
ToScript
-----------

*/

/*
	ToScript
	toscript <in> <array_name>
	
	A Tool to convert binary files to JavaScript sources which define an equivalent array.
*/

class ToScript
{	
	static function main() {
	   var args = neko.Sys.args();
	   var in_name = args[0];
	   var out_array = args[1];
	   var out_file = in_name + ".js";
	   
	   neko.Lib.println("// Converted " + in_name + " to " + out_array + " in " + out_file);
	   var in_file = neko.io.File.read(in_name, true);
	   var in_str = in_file.readAll();
	   in_file.close();
	   
	   // Print to stdout
	   neko.Lib.print("var " + out_array + " = [");
	   var i = 0;
	   while (i < in_str.length)
	   {
	       neko.Lib.print(in_str.charCodeAt(i));
	       i += 1;
	       if (i < in_str.length)
	           neko.Lib.print(",");
	   }
	   neko.Lib.print("];");
	}
}
