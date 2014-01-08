package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	/**
	 * ...
	 * @author Danny Weitekamp
	 */
	public class CustomTextField extends TextField{
		
		/**
		 * The color of all the text in this text field. Default: white.
		 * */
		public var color:uint = Globals.TEXT_COLOR
		
		/**
		 * The constructor
		 * @param an reference to the stage
		 * @param whether or not the field can be clicked
		 * */
		public function CustomTextField(stage:Stage, mouseEnabled:Boolean = true):void {
			
			updateFormat()			
			stage.addChild(this)
			
			if(mouseEnabled == true){
				this.addEventListener(MouseEvent.MOUSE_OVER, inverseText)
				this.addEventListener(MouseEvent.MOUSE_OUT, regText)
			}
		}
		/**
		 * Does a bitwise inversion of current color and background color
		 * */
		public function inverseText(e:Event = null):void {
			this.backgroundColor = ~Globals.BACKGROUND_COLOR
			this.textColor = ~color
		}
		/**
		 * Undoes changes to the color and background color
		 * */
		public function regText(e:Event = null):void {
			this.backgroundColor = Globals.BACKGROUND_COLOR
			this.textColor = color
		}
		
		/**
		 * Writes text to field and updates the formatting of the text field
		 * @param text The text displayed in the field.
		 * */
		public function setText(text:String) {
			this.text = text
			updateFormat()
		}
		/**
		 * Updates the color and formatting of the field.
		 * */
		public function updateFormat():void {
			this.wordWrap = true
			this.autoSize = TextFieldAutoSize.LEFT					
			this.width = 500			
			this.setTextFormat(Globals.TEXT_FORMAT)
			this.selectable = false
			this.backgroundColor = Globals.BACKGROUND_COLOR
			this.background = true			
			this.textColor = color
			
		}
		
	}

}