package;

import flixel.FlxG;
import flixel.FlxState;

public class IntroState extends FlxState {
    private var IntroEnded:Bool;

    override function create():Void {
        super.create();
    }
    
    override function update(elapsed:Float):Void {
        if(FlxG.keys.space()) {
            IntroEnded = true;
        }

        if(IntroEnded == true) {
            FlxG.switchState(new MenuState());
        }
    }
}
