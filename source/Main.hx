package;

import flixel.FlxGame;
import openfl.Assets;

public class Main extends FlxGame {
    public static var DrawFrameRate:Bool;
    public static var FrameRate:Int;
    
    public function new():Void {
        FrameRate = 60;
        DrawFrameRate = true;
        
        FlxGame.updateFramerate(FrameRate);
    }
    
    public function start():Void {
        FlxGame.switchState(new IntroState());
    }
}