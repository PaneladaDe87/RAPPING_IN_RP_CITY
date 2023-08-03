package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;

public class MenuState extends FlxState {
    // Title sprites
    public var TitleSprite:FlxSprite;
    public var TitleOffsetX:Int;
    public var TitleOffsetY:Int;    
    public var TitleImagePath:String;
    
    // Tiky sprites
    public var TikySprite:FlxSprite;
    public var TikyOffsetX:Int;
    public var TikyOffsetY:Int;
    public var TikyImagePath:String;
    
    private function New():Void {
        TikyImagePath = "./assets/images/TikyAsset.png";
        TitleImagePath = "./assets/images/Title.png";
        TikySprite.loadGraphic(TikyImagePath, false);
        TitleSprite.loadGraphic(TitleImagePath, false);
        
        add(TikySprite);
        add(TitleSprite);
        
        // Shut up, tiky is making a beautyful graffiti
    }
    
    override function Create():Void {
        super.Create();
        FlxG.stage.color(0xFF323232);
    }
}