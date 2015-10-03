## 3.7.2 インポート(import)

型のパスが一つの.hxファイルで複数回使われる場合、`import`を使ってそれを短縮するのが効果的でしょう。`import`は、以下のように型の使用時のパッケージの省略を可能にします。

```haxe
import haxe.ds.StringMap;

class Main {
  static public function main() {
    // instead of: new haxe.ds.StringMap();
    new StringMap();
  }
}
```

`haxe.ds.StringMap`を1行目でインポートをすることで、 コンパイラは`main`関数の`StringMap`を`haxe.ds`パッケージのものとして解決することができます。これを、`StringMap`が現在のファイルに**インポート**されていると言います。

上記の例では、1つの**モジュール**をインポートしていますが、インポートされる型は1つとは限りません。つまり、インポートしたモジュールにふくまれるすべての型が利用可能になります。

```haxe
import haxe.macro.Expr;

class Main {
  static public function main() {
    var e:Binop = OpAdd;
  }
}
```

`Binop`型は、`haxe.macro.Expr`モジュールで定義されている[enum](types-enum-instance.md)で、このモジュールのインポートで利用可能になりました。もし、モジュール内の特定の型のみを指定してインポート(例えば、`import haxe.macro.Expr.ExprDef`)した場合、プログラムは`Class not found : Binop`でコンパイルが失敗します。

インポートには、いくつかの知っておくべきポイントがあります。

*　より後に書かれたインポートが優先されます。(詳しくは、[解決順序](type-system-resolution-order.md))
* [静的拡張](lf-static-extension.md)のキーワードの`using`は`import`の効果をふくみます。
* `enum`がインポートされると、(直接か、モジュールの一部としてかを問わず)、その[enumコンストラクタ](types-enum-constructor.md)のすべてもインポートされます。(上述の例、`OpAdd`の利用例をみてください)

さらに、クラスの[静的フィールド](class-field.md)をインポートして使うこともできます。

```haxe
import Math.random;

class Main {
  static public function main() {
    random();
  }
}
```

フィールド名やローカル変数名と、パッケージ名は衝突するので、特別な気づかいが必要です。このとき、フィールド名やローカル変数は、パッケージ名よりも優先されます。`haxe`と命名された変数名は、haxeというパッケージの使用を妨害します。

###### ワイルドカードインポート

Haxeでは`.*`を使用することで、パッケージにふくまれるすべてのモジュール、またはモジュールにふくまれるすべての型、あるいは型が持つすべてのフィールドをインポートすることができます。この種類のインポートは、以下のように一段階しか適用されないことに気をつけてください。

```haxe
import haxe.macro.*;

class Main {
  static function main() {
    var expr:Expr = null;
    //var expr:ExprDef = null; // Class not found : ExprDef
  }
}
```

`haxe.macro`のワイルドカードインポートを使うことで、このパッケージにふくまれる`Expr`モジュールにアクセスできるようになりましたが、`Expr`モジュールのサブタイプの`ExprDef`にはアクセスできません。このルールは、モジュールをインポートしたときの静的フィールドに対しても同じです。

パッケージに対するワイルドカードインポートでは、コンパイラはそのパッケージにふくまれるモジュールを貪欲にコンパイルするわけではありません。つまり、これらのモジュールは明示的に使用されない限り、コンパイラが認識することはなく、生成された出力の中にはふくまれません。

###### 別名(エイリアス)を使ったインポート

型や静的フィールドをインポートしたモジュール内で大量につかう場合、短い別名をつけるのが有効かもしれません。別名は衝突した名前に対して、ユニークな名前をあたえて区別するのにも役立ちます。

```haxe
import String.fromCharCode in f;

class Main {
  static function main() {
    var c1 = f(65);
    var c2 = f(66);
    trace(c1 + c2); // AB
  }
}
```

ここでは`String.fromCharCode`を`f`としてインポートしたので、`f(65)`や`f(66)`といった使い方ができます。同じことはローカル変数でもできますが、別名を使う方法はコンパイル時のみのものなので実行時のオーバーヘッドが発生しません。

##### since Haxe 3.2.0

Haxeでは、`as`の代わりにより自然な`in`キーワードを使うことも可能です。

---

Previous section: [モジュールのサブタイプ(従属型)](type-system-module-sub-types.md)

Next section: [解決順序](type-system-resolution-order.md)