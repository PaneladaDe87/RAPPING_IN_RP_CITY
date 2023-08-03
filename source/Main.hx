package;

import flixel.FlxG;
import openfl.Assets;

public class Main extends FlxG {
    public static var DrawFrameRate:Bool;
    public static var FramesRate:Int;
    
    public function New():Void {
        FramesRate = 60;
        DrawFrameRate = true;
        
        FlxG.updateFramerate(FramesRate)
    }
    
    public function Start():Void {
        FlxG.switchState(new IntroState());
    }
}