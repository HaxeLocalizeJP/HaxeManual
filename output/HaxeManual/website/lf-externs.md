## 6.2 extern

externはターゲット固有の連携を型安全のルールに従って記述するために使います。宣言は普通のクラスに似た形で、以下の要素が必要です。

* `class`キーワードの前に`extern`キーワードを置きます。
* [メソッド](class-field-method.md)は式を持ちません。
* すべての引数と戻り値の型を明示します。

[Haxe標準ライブラリ](std.md)の`Math`クラスがちょうどいい例です。その一部を抜粋します。

```haxe
extern class Math
{
	static var PI(default,null) : Float;
	static function floor(v:Float):Int;
}
```

`extern`が、メソッドと変数の両方を定義できることがわかります(実際のところ、`PI`は読み込み専用の[プロパティ](class-field-property.md))を定義しています。一度この情報がコンパイラで使用可能になると、型がわかり、フィールドへのアクセスが出来るようになります。

```haxe
class Main {
  static public function main() {
    var pi = Math.floor(Math.PI);
    $type(pi); // Int
  }
}
```

`floor`メソッドの戻り値が`Int`して定義されているため、このように動作します。

Haxe標準ライブラリは多くの`extern`をFlash、JavaScriptターゲット用にもっています。これにより、ネイティブのAPIに型安全のルールに従ってアクセス可能にし、より高いレベルのAPI設計の助けになります。[haxelib](haxelib.md)でも、多くのネイティブのライブラリの`extern`を入手できます。

Flash、Java、C#ターゲットでは、[コマンドライン](compiler-usage.md)から直接ネイティブライブラリの取り込みを行うことができます。ターゲットごとの詳細は[Target Details](target-details.md)のそれぞれの節で説明されています。

Pythonや、JavaScriptといったターゲットでは、`extern`クラスをネイティブのモジュールから読み込むために追加の「インポート」が必要になる場合があります。Haxeはそのような依存関係を宣言する仕組みを提供しているので、それらを[Target Details](target-details.md)のそれぞれの節で説明します。

##### 可変長引数と、型の選択肢
##### since Haxe 3.2.0

haxe.externパッケージはネイティブの概念をHaxeに対応させるため、2つの型を提供しています。

* `Rest<T>`: この型は関数の最後の引数として使って、可変長の引数を追加で渡すことを可能にします。型パラメータは引数を特定の型に制限するのに使います。
* `EitherType<T1,T2>`: この型はパラメータのどちらかの型を使うことができるようにする。つまり、型の選択肢を表現できます。3つ以上の型を選ばせたい場合はネストさせて使います。

以下にデモを用意しました。

```haxe
import haxe.extern.Rest;
import haxe.extern.EitherType;

extern class MyExtern {
  static function f1(s:String, r:Rest<Int>):Void;
  static function f2(e:EitherType<Int, String>):Void;
}

class Main {
  static function main() {
    MyExtern.f1("foo", 1, 2, 3); // use 1, 2, 3 as rest argument
    MyExtern.f1("foo"); // no rest argument
    //MyExtern.f1("foo", "bar"); // String should be Int

    MyExtern.f2("foo");
    MyExtern.f2(12);
    //MyExtern.f2(true); // Bool should be EitherType<Int, String>
  }
}
```

---

Previous section: [グローバルコンパイラフラグ](lf-condition-compilation-flags.md)

Next section: [静的拡張](lf-static-extension.md)