## 9.5.3 @:genericBuild

##### since Haxe 3.1.0

通常の[ビルドマクロ](macro-type-building.md)は型ごとに実行するもので、これでも十分に強力です。いくつかの用途では、型の**使用**ごと、つまりコードに出現するごとにビルドマクロが走ることが役立つものもあります。何より、これにより具体的な型パラメータにもアクセスできるようになります。

`@:genericBuild`は`@:build`と全くおなじように型に引数付きのマクロ呼び出しを追加することで使用します。

```haxe
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Type;

class GenericBuildMacro1 {
  static public function build() {
    switch (Context.getLocalType()) {
      case TInst(_, [t1]):
        trace(t1);
      case t:
        Context.error("Classが要求されています", Context.currentPos());
    }
    return null;
  }
}
```
```haxe
@:genericBuild(GenericBuildMacro1.build())
class MyType<T> { }

class Main {
  static function main() {
    var x:MyType<Int>;
    var x:MyType<String>;
  }
}
```

この例を実行するとコンパイラは`TAbstract(Int,[])`と`TInst(String,[])`を出力することから、`MyType`の具体的な型が認識されたことがわかります。このマクロの処理では、この情報をカスタムの型の生成もできます（`haxe.macro.Context.defineType`を使うことで）し、すでに存在する型の参照もできます。簡潔さのためにここでは`null`を返して、コンパイラに型を[推論](type-system-type-inference.md)させています。

Haxe 3.1では`@:genericBuild`マクロの戻り値は`haxe.macro.Type`でなくてはいけませんでした。Haxe 3.2では、
`haxe.macro.ComplexType`を返すことが許可（そして推奨）されています。多くの場合は、型はただパスで参照するだけで動作するのでこのほうが簡単です。

##### 定数型パラメータ

Haxeでは型パラメータ名が`Const`の場合、[定数値の式](expression-constants.md)を型パラメータとして渡すことができます。`@:genericBuild`マクロのコンテクストでマクロに直接情報を渡すのに役立ちます。

```haxe
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Type;

class GenericBuildMacro2 {
  static public function build() {
    switch (Context.getLocalType()) {
      case TInst(_,[TInst(_.get() => { kind: KExpr(macro $v{(s:String)}) },_)]):
        trace(s);
      case t:
        Context.error("Classが要求されています", Context.currentPos());
    }
    return null;
  }
}
```
```haxe
@:genericBuild(GenericBuildMacro2.build())
class MyType<Const> { }

class Main {
  static function main() {
    var x:MyType<"myfile.txt">;
  }
}
```

このマクロの処理ではファイルを読み込んで、カスタムの型を生成することができます。

---

Previous section: [@:autoBuild](macro-auto-build.md)

Next section: [制限](macro-limitations.md)