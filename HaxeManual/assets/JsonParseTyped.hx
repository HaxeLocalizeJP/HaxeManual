typedef MyData = {
  var name:String;
  var tags:Array<String>;
}

class Main {
  static function main() {
    var s = '{
      "name": "Haxe",
      "tags": ["awesome"]
    }';
    var o:MyData = haxe.Json.parse(s);
    trace(o.name); // Haxe (文字列)
    // awesome (配列の中の文字列)
    trace(o.tags[0]);
  }
}
