## 2.2 null許容

> ##### Define: null許容
>
> Haxeでは、ある型が値として`null`をとる場合にnull許容であるとみなす。

プログラミング言語は、null許容についてなにか1つ明確な定義を持つのが一般的です。ですが、Haxeではターゲットとなる言語の元々の挙動に従うことで妥協しています。ターゲット言語のうちのいくつかは全てがデフォルト値として`null`をとり、その他は特定の型では`null`を許容しません。つまり、以下の2種類の言語を区別しなくてはいけません。

> ##### Define: 静的ターゲット
>
> 静的ターゲットでは、その言語自体が基本型が`null`を許容しないような型システムを持っています。この性質はFlash、C++、Java、C#ターゲットに当てはまります。

> ##### Define: 動的ターゲット
>
> 動的ターゲットは型に関して寛容で、基本型が`null`を許容します。これはJavaScriptとPHP、Neko、Flash 6-8ターゲットが当てはまります。

> ##### Define: デフォルト値
>
> 
>   基本型は、静的ターゲットではデフォルト値は以下になります。
>   
> * `Int`: `0`。
> * `Float`: Flashでは`NaN`。その他の静的ターゲットでは`0.0`。
> * `Bool`: `false`。
> 
> 

その結果、Haxeコンパイラは静的ターゲットでは基本型に対する`null`を代入することはできません。`null`を代入するためには、以下のように基本型を`Null<T>`で囲う必要があります。

```haxe
// error on static platforms
var a:Int = null;
var b:Null<Int> = null; // allowed
```

同じように、基本型は`Null<T>`で囲わなければ`null`と比較することはできません。

```haxe
var a : Int = 0;
// error on static platforms
if( a == null ) { ... }
var b : Null<Int> = 0;
if( b != null ) { ... } // allowed
```

この制限は[unification](type-system-unification.md)が動作するすべての状況でかかります。

> ##### Define: `Null<T>`
>
> 静的ターゲットでは、`Null<Int>`、`Null<Float>`、`Null<Bool>`の型で`null`を許容することが可能になります。動的ターゲットでは`Null<T>`に効果はありません。また、`Null<T>`はその型が`null`を持つことを表すドキュメントとしても使うことができます。

nullの値は隠匿されます。つまり、`Null<T>`や`Dynamic`のnullの値を基本型に代入した場合には、デフォルト値が使用されます。

```haxe
var n : Null<Int> = null;
var a : Int = n;
trace(a); // 0 on static platforms
```

---

Previous section: [Void](types-void.md)

Next section: [オプション引数とnull許容](types-nullability-optional-arguments.md)