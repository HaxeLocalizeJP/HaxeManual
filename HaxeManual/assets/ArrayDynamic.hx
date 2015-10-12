class Main {
  static public function main() {
    // コンパイルエラー: 
    // Arrays of mixed types are only allowed if the type is　forced to Array<Dynamic>
	// (混ざった型の配列は、型がArray<Dynamic>に強制されている場合のみ許可されます。)
    //var myArray = [10, "Bob", false];

    // Array<Dynamic>で混ざった型の配列
    var myExplicitArray:Array<Dynamic> = [10, "Sally", true];
  }
}