package hiscumm;

/*
test
-----------

*/

/*
	TEST
*/

import hiscumm.SPUTM;
import hiscumm.Common;
import utils.JSByteIO;

class JSTest
{
	public static var resources: Array<ResourceIO>;
	public static var engine: SPUTM;
	
	static function main() {
		trace("Preloading resources");
		resources = new Array<ResourceIO>();
		resources.push(JSByteIO.fromURL("SCUMMC.000"));
		resources.push(JSByteIO.fromURL("SCUMMC.001"));
		trace("Resources loaded");
		
		engine = new SPUTM(resources);
		
		trace("Engine init");
		engine.run();
	}
}
