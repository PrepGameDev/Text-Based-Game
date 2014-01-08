package  
{
	import flash.display.Stage;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Danny Weitekamp
	 */
	public class Globals 
	{
		public static var BACKGROUND_COLOR:uint = 0x000000
		public static var TEXT_COLOR:uint = 0xFFFFFF
		public static var ERROR_COLOR:uint = 0xFF8000
		
		public static var TEXT_FORMAT:TextFormat = new TextFormat("Courier New", 20)
		public static var SCENARIOS:Dictionary = new Dictionary
		public static var STAGE:Stage
		public static var MAIN_TEXT:CustomTextField
		
		
	}

}