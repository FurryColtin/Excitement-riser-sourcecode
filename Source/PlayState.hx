package;

//import Section.SwagSection;
import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.effects.FlxTrail;
import flixel.addons.effects.FlxTrailArea;
import flixel.addons.effects.chainable.FlxEffectSprite;
import flixel.addons.effects.chainable.FlxWaveEffect;
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.atlas.FlxAtlas;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
//import Debug.DebugTool;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;
import flixel.util.FlxSort;
import flixel.util.FlxStringUtil;
import flixel.util.FlxTimer;
import haxe.Json;
import lime.utils.Assets;
import openfl.display.BlendMode;
import openfl.display.StageQuality;
import openfl.filters.ShaderFilter;

using StringTools;

class PlayState
{
	// code stuff
	var BG:FlxSprite;
	var Kid:FlxSprite;
	var Smile:FlxSprite;
	var Frown:FlxSprite;
	var Transition:FlxSprite;
	var inTransition:Bool = false;
        var KidSadness:Int = 0;
	var KidHappyness:Int = 0;
	
	// scene changers
	if (FlxG.random.bool(0.0))
	{
	      // gitaroo man easter egg
	      FlxG.switchState(new OptionsMenu());
	}
		
	// debug stuff
	var debugNum:Int = 0;
        var debugText:String = "";
	var debugLoaded:Int = 0;
	var debug:Bool = false;
	if (debug = true)
	{
	   KidSadness += 1;
	   debugNum = 1;
	   debugLoaded = 1;
	   debugText = "Welcome to debug mode! This mode was made by\n Jared Vilanhandoer Here are some commands\n Press [A] To decrease KidSadness\n Press [R] To increase KidSadness\n Press [U] To decrease KidHappieness\n Press [P] To increase KidHappieness";
	}
	
	if (debugLoaded = 1)
	{
	   KidHappyness = 100000;
           trace("Your now in debug mode. Sadly you suck.");
	}
	
	// secret 
	// secret 2
	if (FlxG.random.bool(0.2))
	{
		// secret
		FlxG.switchState(new Gameoveralt());
	}
}
