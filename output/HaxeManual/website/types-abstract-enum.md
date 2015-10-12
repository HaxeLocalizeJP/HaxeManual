## 2.8.5 抽象型列挙体

##### since Haxe 3.1.0

抽象型の宣言に`@:enum`のメタデータを追加することで、その値を有限の値のセットを定義して使うことができます。

```haxe
@:enum
abstract HttpStatus(Int) {
  var NotFound = 404;
  var MethodNotAllowed = 405;
}

class Main {
  static public function main() {
    var status = HttpStatus.NotFound;
    var msg = printStatus(status);
  }

  static function printStatus(status:HttpStatus) {
    return switch(status) {
      case NotFound:
        "ページが見つかりません";
      case MethodNotAllowed:
        "無効なメソッドです";
    }
  }
}
```

以下のJavaScriptへの出力を見ても明らかなように、Haxeコンパイラは抽象型`HttpStatus`の全てのフィールドへのアクセスをその値に変換します。

```haxe
Main.main = function() {
	var status = 404;
	var msg = Main.printStatus(status);
};
Main.printStatus = function(status) {
	switch(status) {
	case 404:
		return "Not found";
	case 405:
		return "Method not allowed";
	}
};
```

これは[インライン変数](class-field-inline.md)によく似ていますが、いくつかの利点があります。

* コンパイラがそのセットのすべての値が正しく型付けされていることを保証できます。
* パターンマッチで、抽象型列挙体への[マッチング](lf-pattern-matching.md)を行う場合に[網羅性](lf-pattern-matching-exhaustiveness.md)がチェックされます。
* 少ない構文でフィールドを定義できます。

---

Previous section: [選択的関数](types-abstract-selective-functions.md)

Next section: [抽象型フィールドの繰り上げ](types-abstract-forward.md)