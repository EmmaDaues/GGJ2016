package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	
	private var btnPlay:FlxButton;
	private var btnCredits:FlxButton;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		add(new FlxSprite(0, 0, AssetPaths.menu_pack__png));
		var s:StarEmitter = new StarEmitter();
		add(s);
		
		add(new FlxSprite(0, 0, AssetPaths.menu_glow__png));
		
		var wizimg:FlxSprite = new FlxSprite(0, 0, AssetPaths.small_wizlogo__png);
		wizimg.x = FlxG.width - 50 - wizimg.width;
		wizimg.y = FlxG.height - 10 - wizimg.height;
		add(wizimg);
		
		var title:FlxSprite = new FlxSprite(0, 0, AssetPaths.Logo__png);
		title.x = wizimg.x - title.width + 20;
		title.y = 100;
		add(title);
		
		
		
		var startButton:FlxButton = new FlxButton(450, 500, "Start", OnClickStartButton);
		startButton.loadGraphic("assets/images/BiggerButton.png", true, 148, 34);
		add(startButton);
		var creditsButton:FlxButton = new FlxButton(650, 500, "Credits", OnClickCreditsButton);
		creditsButton.loadGraphic("assets/images/BiggerButton.png", true, 148, 34);
		add(creditsButton);
		
		/*
		var text:FlxText = new FlxText(0, 0, 0, "Press any key to start...");
		text.color = FlxColor.WHITE;
		text.alignment = FlxTextAlign.CENTER;
		text.size = 32;
		text.screenCenter(FlxAxes.X);
		text.y = FlxG.height - text.height - 32;
		add(text);
		*/
		
		
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}
	
	function OnClickStartButton():Void
    {
        FlxG.switchState(new PlayState());
    }
	
	function OnClickCreditsButton():Void
    {
        FlxG.switchState(new CreditsState());
    }
}