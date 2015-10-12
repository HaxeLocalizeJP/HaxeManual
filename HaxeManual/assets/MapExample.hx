class Main {
  static public function main() {
	// Mapは配列と似た形で初期化するが、'=>'演算子を使う。
    // Mapでは、キーと値の型を明示的に宣言しても良い。
    var map1:Map<Int, String> =
      [1 => "one", 2=>"two"];

    // キーと値の型を推論させても良い。
    var map2 = [
      "one"=>1,
      "two"=>2,
      "three"=>3
    ];
    $type(map2); // Map<String, Int>

    // キーは重複してはいけない。
    // エラー: Duplicate Key
    //var map3 = [1=>"dog", 1=>"cat"];

	// マップの値は配列アクセスの構文を使って取得できる。
    var map4 = ["M"=>"Monday", "T"=>"Tuesday"];
    trace(map4["M"]); //Monday

	// Mapはデフォルトでその値を反復処理できる。
    var valueSum;
    for (value in map4) {
      trace(value); // Monday \n Tuesday
    }

	// keys()メソッドを使ってそのキーを反復処理できる。
    for (key in map4.keys()) {
      trace(key); // M \n T
    }

    // 配列と同様に内包表記で初期化できる。
    var map5 = [
      for (key in map4.keys())
        key => "FRIDAY!!"
    ];
    // {M => FRIDAY!!, T => FRIDAY!!}
    trace(map5);
  }
}
