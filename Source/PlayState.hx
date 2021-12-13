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
	var inCutscene:Bool = false;
        var KidSadness:Int = 0;
	var KidHappyness:Int = 0;
		
	// debug stuff
	var debugNum:Int = 0;
        var debugText:Array<String> = [];
	var debugLoaded:Int = 0;
	// if debug = true then
	// debugText = CoolUtil.coolTextFile(Paths.txt('rawr2'));
     // controls.create.cheating.l
    //  if cheating = true then
     // Kid.playAnim('frown');
	// KidHappyness += 1;
	
	//secret 
	// 1 / 1000 chance for Gitaroo Man easter egg
			if (FlxG.random.bool(0.2))
			{
				// gitaroo man easter egg
				FlxG.switchState(new Gameoveralt());
			}
}
