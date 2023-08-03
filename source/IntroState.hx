package;

import flixel.FlxG;
import flixel.FlxState;

public class IntroState extends FlxState {
    private var IntroEnded:Bool;
    private var CoolText:String;
    
    private function New():Void {
        trace(CoolText);
        Create();
    }
    
    public function Create():Void {
        Update();
    }
    
    public function Update(elapsed:Float):Void {
        if(FlxG.keys.justPressed.SPACE) {
            IntroEnded = true;
        }
        
        if(IntroEnded) {
            FlxG.switchState(new MenuState());
        } else {
            if(CurBeat > LastBeat) {
                for(I in LastBeat...CurBeat) {
                    switch(I + 1) {
                        case 1:
                            CreateText("just me from ImatureSquad");
                            
                        case 2:
                            AddMoreText("presents...");
                            
                        case 3:
                            DeleteText();
                            
                        case 4:
                            CreateText(["Rapping", "In", "RP", "City"]);
                            
                        case 5:
                            DeleteText();
                            
                        case 6:
                            CreateText("Penis");
                            
                        case 7:
                            AddMoreText("LOL");
                            
                        case 8:
                            AddMoreText("This is a copy of FNF'");
                            
                        case 9:
                            IntroEnded = false;
                    }
                }
            }
        }
    }
    
    public function CreateText(Text:String):Void {
        
    }
    
    public function DeleteText():Void {
        
    }
    
    public function AddMoreText(Text:String):Void {
        
    }
}
