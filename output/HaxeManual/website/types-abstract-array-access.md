## 2.8.3 配列アクセス

配列アクセスは、配列の特定の位置の値にアクセスするのに伝統的に使われている特殊な構文です。これは大抵の場合、`Int`のみを引数としますが、抽象型の場合はカスタムの配列アクセスを定義することが可能です。[Haxeの標準ライブラリ](std.md)では、これを`Map`型に使っており、これには以下の2つのメソッドがあります。

```haxe
@:arrayAccess
public inline function get(key:K) {
  return this.get(key);
}
@:arrayAccess
public inline function arrayWrite(k:K, v:V):V {
	this.set(k, v);
	return v;
}
```

配列アクセスのメソッドは以下の2種類があります。

* `@:arrayAccess`メソッドが1つの引数を受け取る場合、それは読み取り用です。
* `@:arrayAccess`メソッドが2つの引数を受け取る場合、それは書き込み用です。

上記のコードの`get`メソッドと`arrayWrite`メソッドは、以下のように使われます。

```haxe
class Main {
  public static function main() {
    var map = new Map();
    map["foo"] = 1;
    trace(map["foo"]);
  }
}
```

ここでは以下のように出力に配列アクセスのフィールドの呼び出しが入ることになりますが、驚かないでください。

```haxe
map.set("foo",1);
console.log(map.get("foo")); // 1
```

##### 配列アクセスの解決順序

Haxe3.2以前では、バグのため`:arrayAccess`のフィールドがチェックされる順序は定義されていませんでした。これは、Haxe3.2では修正されて一貫して上から下へと確認が行われるようになりました。

```haxe
abstract AString(String) {
  public function new(s) this = s;
  @:arrayAccess function getInt1(k:Int) {
    return this.charAt(k);
  }
  @:arrayAccess function getInt2(k:Int) {
    return this.charAt(k).toUpperCase();
  }
}

class Main {
  static function main() {
    var a = new AString("foo");
    trace(a[0]); // f
  }
}
```

`a[0]`の配列アクセスは、`getInt1`のフィールドとして解決されて、小文字の`f`が返ります。バージョン3.2以前のHaxeでは、結果が異なる場合があります。

[暗黙のキャスト](types-abstract-implicit-casts.md)が必要な場合であっても、先に定義されている方が優先されます。

---

Previous section: [演算子オーバーロード](types-abstract-operator-overloading.md)

Next section: [選択的関数](types-abstract-selective-functions.md)