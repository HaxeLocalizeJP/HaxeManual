## 2.1.5 Void

> ##### Define: Void
>
> Voidは型が存在しないことを表します。特定の場面(主に関数)で値を持たないことを表現するのに使います。

Voidは型システムにおける特殊な場合です。Voidは実際には型ではありません。Voidは特に関数の引数と戻り値で型が存在しないことを表現するのに使います。私たちはすでに最初の"Hello World"の例でVoidを使用しています。

```haxe
class Main {
  static public function main():Void {
    trace("Hello World");
  }
}
```

関数型について詳しくは[関数](types-function.md)で解説しますが、ここで軽く予習をしておきましょう。上の例の`main`関数は`Void->Void`型です。これは"引数は無く、戻り値も無い"という意味です。

Haxeでは、フィールドや変数に対してVoidを指定することはできません。以下のように書こうとするとエラーが発生します。

```haxe
// Arguments and variables of type Void are not allowed
var x:Void;
```

---

Previous section: [Bool(真偽値)](types-bool.md)

Next section: [Nullable(null許容型)](types-nullability.md)
