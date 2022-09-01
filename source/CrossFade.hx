package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.animation.FlxAnimation;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;

class CrossFade extends FlxSprite
{
	public function new(character:Character, group:FlxTypedGroup<CrossFade>, ?isDad:Bool = false)
	{
		super();
		frames = character.frames;
		alpha = 0.3;
		setGraphicSize(Std.int(character.width), Std.int(character.height));
		scrollFactor.set(character.scrollFactor.x, character.scrollFactor.y);
		updateHitbox();
		flipX = character.flipX;
		flipY = character.flipY;
		var curCrossFadeMode:String = ClientPrefs.crossFadeMode;
		switch (curCrossFadeMode)
		{
			case 'Mid-Fight Masses':
				x = character.x + FlxG.random.float(0, 60);
				y = character.y + FlxG.random.float(-50, 50);
			case 'Static':
				x = character.x + 60;
				y = character.y - 50;
			case 'Eccentric':
				x = character.x + FlxG.random.float(-20, 90);
				y = character.y + FlxG.random.float(-80, 80);
			default:
				x = character.x + FlxG.random.float(0, 60);
				y = character.y + FlxG.random.float(-50, 50);
		}
		offset.x = character.offset.x;
		offset.y = character.offset.y;
		animation.add('cur', character.animation.curAnim.frames, 24, false);
		animation.play('cur', true);
		animation.curAnim.curFrame = character.animation.curAnim.curFrame;
		if (!character.flixelTrail)
		{
			switch (character.curCharacter)
			{
				case 'gf-pixel':
					color = 0xFFa5004d;
					antialiasing = false;
				case 'monster' | 'monster-christmas':
					color = 0xFF981b3a;
					antialiasing = FlxG.save.data.globalAntialiasing;
				case 'bf' | 'bf-car' | 'bf-christmas':
					color = 0xFF1b008c;
					antialiasing = FlxG.save.data.globalAntialiasing;
				case 'bf-pixel':
					color = 0xFF00368c;
					antialiasing = false;
				case 'senpai' | 'senpai-angry':
					color = 0xFFffaa6f;
					antialiasing = false;
			}
		}
		else
		{
			color = 0xff000000;
		}
		antialiasing = FlxG.save.data.globalAntialiasing;
		default:
			color = FlxColor.fromRGB(character.healthColorArray[0], character.healthColorArray[1], character.healthColorArray[2]);
			antialiasing = FlxG.save.data.globalAntialiasing;
	}
}

else
{
	alpha = 0;
	kill();
	destroy();
	return;
}
var fuck = FlxG.random.bool(70);
var velo = 12 * 5;

switch (curCrossFadeMode)
{
	case 'Mid-Fight Masses':
		if (isDad)
		{
			if (fuck)
				velocity.x = -velo;
			else
				velocity.x = velo;
		}
		else
		{
			if (fuck)
				velocity.x = velo;
			else
				velocity.x = -velo;
		}
	case 'Static':
		if (isDad)
		{
			if (fuck)
				velocity.x = 0;
			else
				velocity.x = 0;
		}
		else
		{
			if (fuck)
				velocity.x = 0;
			else
				velocity.x = 0;
		}
	case 'Eccentric':
		velo = 12 * 8;
		if (isDad)
		{
			if (fuck)
				velocity.x = -velo;
			else
				velocity.x = velo;
		}
		else
		{
			if (fuck)
				velocity.x = velo;
			else
				velocity.x = -velo;
		}
	default:
		if (isDad)
		{
			if (fuck)
				velocity.x = -velo;
			else
				velocity.x = velo;
		}
		else
		{
			if (fuck)
				velocity.x = velo;
			else
				velocity.x = -velo;
		}
}
FlxTween.tween(this, {alpha: 0}, 0.35, {
	onComplete: function(twn:FlxTween)
	{
		kill();
		destroy();
	}
});
group.add(this);
}}
