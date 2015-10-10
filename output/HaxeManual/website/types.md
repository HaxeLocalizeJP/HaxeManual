## 2 型

Haxeコンパイラは豊かな型システムを持っており、これがコンパイル時に型エラーを検出することを手助けします。型エラーとは、文字列による割り算や、整数のフィールドへのアクセス、不十分な(あるいは多すぎる)引数での関数呼び出し、といった型が不正である演算のことです。

いくつかの言語では、この安全性を得るためには各構文での明示的な型の宣言が強いられるので、コストがかかります。

```haxe
var myButton:MySpecialButton = new MySpecialButton(); // AS3
MySpecialButton* myButton = new MySpecialButton(); // C++ 
```

一方、Haxeではコンパイラが型を**推論**できるため、この明示的な型注釈は必要ではありません。

```haxe
var myButton = new MySpecialButton(); // Haxe
```

型推論の詳細については[型推論](type-system-type-inference.md)で説明します。今のところは、上のコードの変数`myButton`は`MySpecialButton`の**クラスインスタンス**とわかると言っておけば十分でしょう。

Haxeの型システムは、以下の7つの型を認識します。

 * **クラスインスタンス**: クラスかインスタンスのオブジェクト 
* **列挙型インスタンス**: Haxeの列挙型(enum)の値 
* **構造体**: 匿名の構造体。例えば、連想配列。 
* **関数**: 引数と戻り値1つの型の複合型。 
* **ダイナミック**: あらゆる型に一致する、なんでも型。 
* **抽象(abstract)**: 実行時には別の型となる、コンパイル時の型。 
* **単相**: 後で別の型が付けられる未知(Unknown)の型。

ここからの節で、それぞれの型のグループとこれらがどうかかわっているのかについて解説していきます。

> ##### Define: 複合型
>
> 
> 複合型というのは、従属する型を持つ型です。[型パラメータ](type-system-type-parameters.md)を持つ型や、[関数](types-function.md)型がこれに当たります。
>

---

Previous section: [歴史](introduction-haxe-history.md)

Next section: [基本型](types-basic-types.md)