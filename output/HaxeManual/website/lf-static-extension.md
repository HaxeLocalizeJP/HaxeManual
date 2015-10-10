## 6.3 静的拡張

> ##### Define: 静的拡張
>
> 静的拡張はすでに存在している型に対して、元のソースコードを変更することなく見せかけの拡張を行います。Haxeの静的拡張は最初の引数が拡張する対象の型である静的メソッドを宣言して、それ`using`を使って記述しているクラス内に持ちこむことで使用できます。

静的拡張は実際に型の変更を行うことなく型を強化する強力なツールです。以下の例で、その使い方を実演します。

```haxe
using Main.IntExtender;

class IntExtender {
  static public function triple(i:Int) {
    return i * 3;
  }
}

class Main {
  static public function main() {
    trace(12.triple());
  }
}
```

`Int`は元々`triple`メソッドを持っていませんが、このプログラムは期待通り`36`を出力します。`12.triple()`の呼び出しが`IntExtender.triple(12)`に変形されるためです。これには必要な条件が3つあります。

1. 定数値の`12`と`triple`の最初の引数の型が、共に`Int`である
2. `IntExtender`クラスが`using Main.IntExtender`を使って現在の文脈に読み込まれている。
3. `Int`自身は`triple`フィールドを持っていない(持っていた場合、静的拡張よりも高い優先度になる)。

静的拡張はシンタックスシュガーですが、コードの可読性に大きな影響を与えることには注目する価値があります。`f1(f2(f3(f4(x))))`の形のネストされた呼び出しの代わりに、`x.f4().f3().f2().f1()`のチェーンの形での呼び出しが可能になります。

優先順位のルールは[解決順序](type-system-resolution-order.md)ですでに説明されているとおり、`using`式が複数ある場合は下から上へと確認がされ、各モジュールでは各型のフィールドが上から下へと確認がされます。モジュールを静的拡張として`using`すると、そのすべての型が現在の文脈にインポートされます(モジュール内の特定の型の場合とは対照的です。詳しくは[モジュールとパス](type-system-modules-and-paths.md)を見てください)。

---

Previous section: [extern](lf-externs.md)

Next section: [Haxe標準ライブラリについて](lf-static-extension-in-std.md)