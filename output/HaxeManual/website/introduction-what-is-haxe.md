## 1.1 Haxeって何?

Haxeはオープンソースの高級プログラミング言語とコンパイラで構成されており、ECMAScriptをもとにした構文で書いたプログラムをさまざまなターゲットの言語へとコンパイルすることを可能にします。適度な抽象化を行うため、複数のターゲットへコンパイル可能な1つのコードベースも作成できます。

<<<<<<< HEAD:md/manual/introduction-what-is-haxe.md
Haxeは強く型付けされている一方で、必要に応じて型付けを弱めることも可能です。型情報を活用すれば、ターゲットの言語では実行時にしか発見できないようなエラーをコンパイル時に検出することができます。さらには、ターゲットへの変換時に最適化や堅牢なコードを生成するためにも使用されます。
=======
Haxe is strongly typed but the typing system can be subverted where required. Utilizing type information, the Haxe type system can detect errors at compile-time which would only be noticeable at run-time in the target language. Furthermore, type information can be used by the target generators to generate optimized and robust code.
>>>>>>> english/master:output/HaxeManual/website/introduction-what-is-haxe.md

現在、Haxeには9つのターゲット言語があり、さまざまな用途に利用できます。

名前  | 出力形式  | 主な用途 
 --- | --- | ---
JavaScript  | ソースコード  | ブラウザ, デスクトップ, モバイル, サーバー 
Neko  | バイトコード  | デスクトップ, サーバー 
PHP  | ソースコード  | サーバー 
Python  | ソースコード  | デスクトップ, サーバー 
C++  | ソースコード  | デスクトップ, モバイル, サーバー 
ActionScript 3  | ソースコード  | ブラウザ, デスクトップ, モバイル 
Flash  | バイトコード  | ブラウザ, デスクトップ, モバイル 
 Java  | ソースコード  | デスクトップ, サーバー 
C#  | ソースコード  | デスクトップ, モバイル, サーバー 
 

この[導入](introduction.md)の残りでは、Haxeのプログラムがどのようなものなのか、Haxeはが2005年に生まれてからどのように進化してきたのか、を概要でお送りします。

[型](types.md)では、Haxeの7種類の異なる型についてとそれらがどう関わりあっているのかについて紹介します。型に関する話は、[型システム](type-system.md)へと続き、**単一化(Unification)**、**型パラメータ**、**型推論**についての解説がされます。

[Class Fields](class-field.md)では、Haxeのクラスの構造に関する全てをあつかいます。加えて、**プロパティ**、**インラインフィールド**、**ジェネリック関数**についてもあつかいます。

[Expressions](expression.md)では、**式**を使用して実際にいくつかの動作をさせる方法をお見せします。

[Language Features](lf.md)では、**パターンマッチング**、**文字列補間**、**デッドコード削除**のようなHaxeの詳細の機能について記述しています。ここで、Haxeの言語リファレンスは終わりです。

<<<<<<< HEAD:md/manual/introduction-what-is-haxe.md
そして、Haxeのコンパイラリファレンスへと続きます。まずは[Compiler Reference](#)で基本的な内容を、そして、[Compiler Features](cr-features.md)で高度な機能をあつかいます。最後に[Macros](macro.md)で、ありふれたタスクを**Haxeマクロ**がどのように単純かするのかを見ながら、刺激的なマクロの世界に挑んでいきます。
=======
We continue with the Haxe compiler reference, which first handles the basics in [Compiler Usage](compiler-usage.md) before getting into the advanced features in [Compiler Features](cr-features.md). Finally, we will venture into the exciting land of **haxe macros** in [Macros](macro.md) to see how some common tasks can be greatly simplified.
>>>>>>> english/master:output/HaxeManual/website/introduction-what-is-haxe.md

次の[Standard Library](std.md)のでは、Haxeの標準ライブラリに含まれる主要な型や概念を一つ一つ見ていきます。そして、[Haxelib](haxelib.md)でHaxeのパッケージマネージャであるHaxelibについて学びます。

<<<<<<< HEAD:md/manual/introduction-what-is-haxe.md
Haxeは様々なターゲット間の差を吸収してくれますが、場合によってはターゲットを直接的にあつかうことが重要になります。これが、[Target Details](#)の話題です。
=======
Haxe abstracts away many target differences, but sometimes it is important to interact with a target directly, which is the subject of [Target Details](target-details.md).
>>>>>>> english/master:output/HaxeManual/website/introduction-what-is-haxe.md

---

Previous section: [導入](introduction.md)

Next section: [このドキュメントについて](introduction-about-this-document.md)
