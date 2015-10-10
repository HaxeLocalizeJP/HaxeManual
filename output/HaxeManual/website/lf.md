## 6 言語機能

##### [抽象型](types-abstract.md):

抽象型は実行時には別の形として提供されるコンパイル時の構成要素です。これにより、すでに存在する型に別の意味をあたえることができます。

##### [externクラス](lf-externs.md):

externを使うことで、型安全のルールにしたがってターゲット固有の連携を記述することができます。

##### [匿名構造体](types-anonymous-structure.md):

匿名構造体を使うことでデータを簡単にまとめて、小さなデータクラスの必要性を減らすことができます。

```haxe
var point = { x: 0, y: 10 };
point.x += 10;
```

##### [配列内包表記](lf-array-comprehension.md):

ループと条件分岐を使って、素早く配列を生成して受け渡すことができます。

```haxe
var evenNumbers = [ for (i in 0...100) if (i%2==0) i ];
```

##### [クラス、インターフェース、継承](types-class-instance.md):

Haxeはクラスを使ったコードの構造化ができる、オブジェクト指向言語です。継承やインターフェースといったJavaでサポートされるようなオブジェクト指向言語の標準的な機能を備えています。

##### [条件付きコンパイル](lf-condition-compilation.md):

条件付きコンパイルを使うことで、コンパイルのパラメータごとに固有のコードをコンパイルすることができます。これはターゲットごとの違いを抽象化する手助けになるだけでなく、詳細のデバッグ機能を提供するなどその他の用途にも使用できます。

```haxe
#if js
    js.Lib.alert("Hello");
#elseif sys
    Sys.println("Hello");
#end
```

##### [(一般化)代数的データ型](types-enum-instance.md):

Haxeではenumとして知られる、代数的データ型(ADT)を使ってデータ構造を表現することができます。さらに、Haxeは一般化されたヴァリアント(GADT)もサポートしています。

```haxe
enum Result {
    Success(data:Array<Int>);
    UserError(msg:String);
    SystemError(msg:String, position:PosInfos);
}
```

##### [インライン呼び出し](class-field-inline.md):

関数をインラインとして指定して、呼び出し場所にその関数のコードを挿入させることができます。これにより、手作業でのインライン化のようなコードの重複を発生させること無く、価値あるパフォーマンスの改善を得ることできます。

##### [イテレータ(反復子)](lf-iterators.md):

Haxeはイテレータを適切にあつかっているので、値のセット(例えば、配列)の反復処理がとても簡単です。自前のクラスであっても、イテレータ機能の実装をすることで素早く反復可能にすることができます。

```haxe
for (i in [1, 2, 3]) {
    trace(i);
}
```

##### [ローカル関数とクロージャ](expression-function.md):

Haxeでは関数はクラスフィールドに限定されず、式の中で定義することができます。その場合、強力なクロージャも使用可能です。

```haxe
var buffer = "";
function append(s:String) {
    buffer += s;
}
append("foo");
append("bar");
trace(buffer); // foobar
```

##### [メタデータ](lf-metadata.md):

フィールド、クラス、式に対してメタデータを追加できます。これにより、コンパイラ、マクロ、実行時のクラスに情報の受け渡しができます。

```haxe
class MyClass {
    @range(1, 8) var value:Int;
}
trace(haxe.rtti.Meta.getFields(MyClass).value.range); // [1,8]
```

##### [静的拡張](lf-static-extension.md):

既に存在するクラスやその他の型に対して、静的拡張を使うことで追加の機能を足すことができます。

```haxe
using StringTools;
"  Me & You    ".trim().htmlEscape();
```

##### [文字列中の変数展開](lf-string-interpolation.md):

シングルクオテーションを使って宣言した文字列では現在の文脈中の変数へのアクセスができます。

```haxe
trace('My name is $name and I work in ${job.industry}');
```

##### [関数の部分適用](lf-function-bindings.md): 

すべての関数は部分適用を使って、いくつかの引数だけに値を適用して残りの引数を後で指定できるように残すことができます。

```haxe
var map = new haxe.ds.IntMap();
var setToTwelve = map.set.bind(_, 12);
setToTwelve(1);
setToTwelve(2);
```

##### [パターンマッチング](lf-pattern-matching.md): 

複雑な構造体はenumや構造体から情報を抽出したり、特定の演算子で値の組み合わせを指定したりしながら、パターンを当てはめてマッチングすることができます。

```haxe
var a = { foo: 12 };
switch (a) {
    case { foo: i }: trace(i);
    default:
}
```

##### [プロパティ](class-field-property.md):

変数のクラスフィールドにはカスタムの読み込み書き込みアクセスを指定するプロパティが使えます。これにより、より良いアクセス制御が実現できます。

```haxe
public var color(get,set);
function get_color() {
    return element.style.backgroundColor;
}
function set_color(c:String) {
    trace('Setting background of element to $c');
    return element.style.backgroundColor = c;
}
```

##### [アクセス制御](lf-access-control.md):

Haxeでは、メタデータの構文を使って、クラスやフィールドに対してアクセスを許可したり強制したりといったアクセス制御をを行うことできます。

##### [型パラメータ、共変性、反変性](type-system-type-parameters.md):

型には型パラメータをつけて、型付きのコンテナなど複雑なデータ構造を表現できます。型パラメータは特定の型への制限が可能で、また、変性のルールに従います。

```haxe
class Main<A> {
    static function main() {
        new Main<String>("foo");
        new Main(12); // use type inference
    }

    function new(a:A) { }
}
```

---

Previous section: [型チェック](expression-type-check.md)

Next section: [条件付きコンパイル](lf-condition-compilation.md)