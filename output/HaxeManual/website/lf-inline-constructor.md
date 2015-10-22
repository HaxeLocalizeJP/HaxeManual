## 6.11 インラインコンストラクタ

##### since Haxe 3.1.0

コンストラクタに、[inline](class-field-inline.md)の宣言をつけると、コンパイラは特定の場合において最適化を試みます。この最適化が動作するためにはいくつかの必要事項があります。

* コンストラクタの呼び出しの結果はローカル変数への直接の代入でなければいけない。
* コンストラクタフィールドの式はそのフィールドへの代入のみでなければならない。

以下に、コンストラクタのインライン化の実例を挙げます。

```haxe
class Point {
  public var x:Float;
  public var y:Float;

  public inline function new(x:Float, y:Float) {
    this.x = x;
    this.y = y;
  }
}

class Main {
  static public function main() {
    var pt = new Point(1.2, 9.3);
  }
}
```

JavaScript出力をみると、その効果がわかります。

```haxe
Main.main = function() {
	var pt_x = 1.2;
	var pt_y = 9.3;
};
```

---

Previous section: [アクセス制御](lf-access-control.md)

Next section: [コンパイラの使い方](compiler-usage.md)