enum Color {
  Red;
  Green;
  Blue;
  Rgb(r:Int, g:Int, b:Int);
}

class Main {
  static public function main() {
    var ec:EnumValue = Red; // 問題無い
    var en:Enum<Color> = Color; // 問題無い
    // エラー: Color should be Enum<Color>
	// (ColorではなくEnum<Color>であるべきです)
    //var x:Enum<Color> = Red;
  }
}
