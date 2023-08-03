package;

import flixel.FlxG;
import openfl.Assets;

public class Main extends FlxG {
    public static var DrawFrameRate:Bool;
    public static var FrameRate:Int;
    public static var Camera:FlxCamera;
    
    public function New():Void {
        FrameRate = 60;
        DrawFrameRate = true;
        
        FlxG.updateFramerate(FrameRate);
    }
    
    public function Start():Void {
        FlxG.switchState(new IntroState());
    }
}