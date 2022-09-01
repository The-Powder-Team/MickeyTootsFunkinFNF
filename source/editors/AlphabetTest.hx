package editors;

import Alphabet;
import flixel.FlxState;
import flixel.FlxSprite;
//import Controls;

class AlphabetTest extends FlxState
{
	var Rectangle = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
	var AlphabetTestText = new Alphabet(0, 0, "|~#$%()*+-:;<=>@[]^_.,'!?\n1234567890\nabcdefghijklmnopqrstuvwxyz", true);
    override public function create()
    {
        add(Rectangle);
        add(AlphabetTestText);
    }

    override function update(elapsed:Float)
        {
            /*if (Controls.BACK) {
                MusicBeatState.switchState(new MasterEditorMenu());
            }*/
    
            super.update(elapsed);
        }
}
