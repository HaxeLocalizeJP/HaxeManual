## 9.4 Tools

Haxe標準ライブラリには、マクロの活用を簡単にするツールクラス一式も用意されています。これらのクラスは[静的拡張](lf-static-extension.md)で使うのが最適で、`using haxe.macro.Tools`で各コンテクストそれぞれやすべてに持ち込むことができます。

* `ComplexTypeTools`: `ComplexType`のインスタンスを人間が読める形に出力したり、`ComplexType`対応する`Type`を見つけたりできます。
* `ExprTools`: `Expr`のインスタンスを人間が読める形で出力したり、式の繰り返しやマッピングの処理を行ったりできます。
* `MacroStringTools`: マクロコンテクストで有用な文字列と文字列式を扱う処理を提供します。
* `TypeTools`: `Type`インスタンスを人間が読める形で出力したり、[単一化](type-system-unification.md)や対応する`ComplexType`の取得といった型を扱うのに便利な機能を提供します。

さらに`haxe.macro.Printer`クラスが、様々な型を人間の読めるフォーマットで出力する`public`メソッドを提供しています。これはマクロのデバッグをするのに便利です。

> ##### Trivia: ティンカーベルライブラリとなぜTools.hxが動作するのか
>
> 
> モジュールを`using`することでそのすべての型が静的拡張のコンテクストに取り込まれることはこれまでに学んできました。つまるところ、その型というのは他の型指定する[typedef](type-system-typedef.md)でも良いわけです。コンパイラはよその型をモジュールの一部と認識して、それが静的拡張にも引き継がれるわけです。
> 
> このテクニックはJuraj Kirchheimの**tinkerbell**で同じ目的で初めて使われました。tinkerbellではHaxeコンパイラと標準ライブラリが提供するよりもずっと先に便利なマクロツールを提供していました。このライブラリは今でも追加のマクロのツールを得るためのライブラリとして第一候補でありつづけており、さらにその他の便利機能も提供しています。

---

Previous section: [クラスの実体化](macro-reification-class.md)

Next section: [型ビルド](macro-type-building.md)