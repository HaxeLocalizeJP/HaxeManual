## 4.2.1 よくあるアクセス識別子の組み合わせ

次の例はプロパティのよくあるアクセス識別子の組み合わせです。

```haxe
class Main {
  // 外からの読み込みが可能で、Mainからのみ書き込みが可能。
  public var ro(default, null):Int;

  // 外からの書き込みが可能で、Mainからのみ読み込みが可能。
  public var wo(null, default):Int;

  // ゲッターのget_xと
  // セッターのset_xを通してアクセスする
  public var x(get, set):Int;

  // ゲッターを通して読み込みアクセスし、
  // 書き込みアクセスはできない。
  public var y(get, never):Int;

  // xフィールドに必要
  function get_x() return 1;

  // xフィールドに必要
  function set_x(x) return x;

  // yフィールドに必要
  function get_y() return 1;

  function new() {
    var v = x;
    x = 2;
    x += 1;
  }

  static public function main() {
    new Main();
  }
}
```

`main`メソッドのJavaScriptへのコンパイル結果は、フィールドアクセスがどのようなものなのか理解する助けになるでしょう。

```haxe
var Main = function() {
	var v = this.get_x();
	this.set_x(2);
	var _g = this;
	_g.set_x(_g.get_x() + 1);
};
```

このとおり、読み込みアクセスは`get_x()`の呼び出しとなり、書き込みアクセスは`x`への`2`の代入が`set_x(2)`の呼び出しになりました。`+=`の場合の出力は最初は少し不思議に見えるかもしれませんが、次の例で簡単にわかるはずです。

```haxe
class Main {
  public var x(get, set):Int;
  function get_x() return 1;
  function set_x(x) return x;

  public function new() { }

  static public function main() {
    new Main().x += 1;
  }
}
```

`main`メソッドの`x`のフィールドアクセスについて、ここで起きる事象は複雑です。まずこの場合は、`Main`のインスタンス化という副作用があります。そのため、コンパイラは`new Main().x = new Main().x + 1`という出力を行わないように、複雑な式をローカル変数にキャッシュします。

```haxe
Main.main = function() {
	var _g = new Main();
	_g.set_x(_g.get_x() + 1);
}
```

---

Previous section: [プロパティ](class-field-property.md)

Next section: [型システムへの影響](class-field-property-type-system-impact.md)