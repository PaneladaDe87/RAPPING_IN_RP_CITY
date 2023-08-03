package;

import lime.utils.Assets;
import haxe.Json;
import haxe.format.JsonParser;

using StringTools;

typedef CoolSongData = {
    var Song:String;
    var BPM:Int;
    var Speed:Float;
    var Player1:String;
    var Player2:String;
    var Notes:Array<CoolSectionData>;
}

class SongLOL {
    public var Song:String = "Tutorial";
    public var BPM:Int = 115;
    public var Speed:Float = 1.12;
    public var Player1:String = "Tiky";
    public var Player2:String = "Golden Cutie";
    public var Notes:Array<CoolSectionData>;
    
    public function new(Song, BPM, Notes) {
        this.Song = Song;
        this.BPM = BPM;
        this.Notes = Notes;
    }
}