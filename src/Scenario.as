package {
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	public class Scenario {
		private var name:String
		private var text:String			
		private var optionTexts:Vector.<String> = new Vector.<String>
		private var optionResults:Vector.<String> = new Vector.<String>
		private var textFields:Vector.<CustomTextField> = new Vector.<CustomTextField>
		private var numOptions:int = 0
		/**
		 * The color of all of the text in this scenario	 
		 * */
		public var color:uint = Globals.TEXT_COLOR
		
		
		public function Scenario(name:String, text:String):void {
			this.name = name
			this.text = text
			Globals.SCENARIOS[name] = this
		}
		/**
		 * Adds a clickable option to the scenario. 
		 * @param text The text displayed for the option
		 * @param result The name of the scenario that the option leads to.
		 * */
		public function addOption(text:String, result:String):void {
			optionTexts[numOptions] = text
			optionResults[numOptions] = result
			numOptions++
		}
		
		
		
		private function clean():void {
			for (var i:int = 0; i < textFields.length; i++) {
				var textField:CustomTextField = textFields[i]
				textField.removeEventListener(MouseEvent.MOUSE_UP, select)		
				textField.parent.removeChild(textField)
			}
			textFields = new Vector.<CustomTextField>
			
		}
		
		/**
		 * Adds the scenario to the screen starting the game.
		 * */
		
		public function putOnScreen():void {
			Globals.MAIN_TEXT.color = color
			Globals.MAIN_TEXT.setText(text)
			
			
			var curretYLoc:Number = Globals.MAIN_TEXT.height + 20
			for (var i:int = 0; i < numOptions; i++) {
				var textField:CustomTextField = new CustomTextField(Globals.STAGE)
				textFields[i] = textField
				textField.color = color
				textField.setText(i + 1 + ") " + optionTexts[i])
				textField.y = curretYLoc
				textField.addEventListener(MouseEvent.MOUSE_UP, select)
				curretYLoc += textField.height + 10
				
				
			}
		}
		
		private function select(e:Event = null):void {
			var result_str:String = optionResults[textFields.indexOf(e.currentTarget)]
			if (Globals.SCENARIOS[result_str]) {
				var s:Scenario = Globals.SCENARIOS[result_str]
				
			}else {
				
				var s:Scenario = new Scenario("error", "ERROR: A scenario '" + result_str + "' was called that does not exist")
				s.addOption("return to last scenario", name)
				s.addOption("return to start", "start")
				s.color = Globals.ERROR_COLOR
			}
			this.clean()
			s.putOnScreen()
			
		}
	}
	
}