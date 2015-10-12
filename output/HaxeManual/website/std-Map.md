## 10.2.5 Map

A `Map` is a container composed of **key**, **value** pairs.  A `Map` is also commonly referred to as an associative array, dictionary, or symbol table. The following code gives a short example of working with maps:

```haxe
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

```

Under the hood, a `Map` is an [abstract](types-abstract.md) type. At compile time, it gets converted to one of several specialized types depending on the **key** type:

* `String`: `haxe.ds.StringMap`
* `Int`: `haxe.ds.IntMap`
* `EnumValue`: `haxe.ds.EnumValueMap`
* `{}`: `haxe.ds.ObjectMap`

The `Map` type does not exist at runtime and has been replaced with one of the above objects. 

Map defines [array access](types-abstract-array-access.md) using its key type.

See the [Map API](http://api.haxe.org/Map.html) for details of its methods.

---

Previous section: [GenericStack](std-GenericStack.md)

Next section: [Option](std-Option.md)