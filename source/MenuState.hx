package;

import flixel.FlxGame;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxCamera;

public class MenuState extends FlxState {
    // Title sprites
    public var TitleSprite:FlxSprite = new FlxSprite();
    public var TitleOffsetX:Int;
    public var TitleOffsetY:Int;    
    public var TitleImagePath:String;
    
    // Tiky sprites
    public var TikySprite:FlxSprite = new FlxSprite();
    public var TikyOffsetX:Int;
    public var TikyOffsetY:Int;
    public var TikyImagePath:String;
    
    // Cool camera settings
    public var Camera:FlxCamera = new FlxCamera();
    
    private function new():Void {
        TikyOffsetX = 800;
        TikyOffsetY = 0;
        TitleOffsetX = -720;
        TitleOffsetY = 250;
        
        TikyImagePath = "./assets/images/TikyAsset.png";
        TitleImagePath = "./assets/images/Title.png";
        TikySprite.loadGraphic(TikyImagePath, false);
        TitleSprite.loadGraphic(TitleImagePath, false);
        
        add(TikySprite);
        add(TitleSprite);
        
        // Shut up, tiky is making a beautyful graffiti
        trace("press SPACE to begin");
        
        if(FlxGame.keys.justPressed.SPACE) {
            checkSpaceKey(true);
        }
    }
    
    override function create():Void {
        super.Create();
        FlxGame.stage.color = 0xFF323232;
    }
    
    public static function checkSpaceKey(Pressed:Bool) {
        if(Pressed) {
            trace("FUCK YOU HAHA");
        } else {
            trace("UNFUCK YOU HAHA");
        }
    }
}