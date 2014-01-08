package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldAutoSize;
	
	
	/**
	 * ...
	 * @author Danny Weitekamp
	 */
	
	public class Main extends Sprite {
		
		public function Main():void {
			Globals.STAGE = stage
			Globals.MAIN_TEXT = new CustomTextField(stage, false)
			
			
			//-> BEGINNING OF STORY
			//TODO: Write a story like the one below. Pick colors, and make ways to win or lose. 
			
			var first:Scenario = new Scenario("start","You find yourself in a dark room with no windows. What do you do?")
			first.addOption("Turn on the lights", "lights on")
			first.addOption("Bang on the walls", "explode")
			
			
			var s:Scenario = new Scenario("explode", "BANG! You explode! There was a bomb in the wall \n"+
														"Would you like to start over?")
			s.addOption("Yes. Resart", "start")
			s.addOption("No", "to bad")
			s.color = 0xFF0000
			
			
			var s:Scenario = new Scenario("lights on", "The lights turn on. The room is empty except for a single door. What do you do?")
			s.addOption("Open the door", "go outside")
			s.addOption("Bang on the door", "monster eats you")
			s.addOption("Dance", "dance")	
			s.color = 0xFFFF00
			
			var s:Scenario = new Scenario("monster eats you", "A monster punches through the door, and eats your brain. " +
																"So you're dead an stuff. Restart? :)")
			s.addOption("Yes. Resart", "start")
			s.addOption("No", "to bad")
			s.color = 0xFF0000
			
			var s:Scenario = new Scenario("go outside", "You made it outside and won the game! WOOOOT! Would you like to restart?")
			s.addOption("Yes", "start")
			s.addOption("No", "to bad")
			s.color = 0x00FF00
			
			var s:Scenario = new Scenario("to bad", "Well too bad! You have to restart!")
			s.addOption("Restart Now", "start")
			s.color = 0xFF0000
			
			//-> END OF STORY
			
			//This starts everything. Don't Delete it
			first.putOnScreen()
		}
		
		
		
		
		
	}
	
}