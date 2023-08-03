package;

import flixel.FlxGame;
import flixel.FlxState;

class IntroState extends FlxState {
    private var IntroEnded:Bool;
    private var CoolText:String = "CoolText";
    
    private function new():Void {
        trace(CoolText);
    }
    
    public function create():Void {
        update();
    }
    
    public function update(elapsed:Float):Void {
        if(FlxGame.keys.justPressed.SPACE) {
            IntroEnded = true;
        }
        
        if(IntroEnded) {
            FlxGame.switchState(new MenuState());
        } else {
            if(CurBeat > LastBeat) {
                for(I in LastBeat...CurBeat) {
                    switch(I + 1) {
                        case 1:
                            createText("just me from ImatureSquad");
                            
                        case 2:
                            addMoreText("presents...");
                            
                        case 3:
                            deleteText();
                            
                        case 4:
                            createText(["Rapping", "In", "RP", "City"]);
                            
                        case 5:
                            deleteText();
                            
                        case 6:
                            createText("Penis");
                            
                        case 7:
                            addMoreText("LOL");
                            
                        case 8:
                            addMoreText("This is a copy of FNF'");
                            
                        case 9:
                            IntroEnded = false;
                    }
                }
            }
        }
    }
    
    public function createText(Text:String):Void {
        
    }
    
    public function deleteText():Void {
        
    }
    
    public function addMoreText(Text:String):Void {
        
    }
}
