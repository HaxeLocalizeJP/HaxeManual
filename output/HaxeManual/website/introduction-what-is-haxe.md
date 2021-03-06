## 1.1 Haxeって何?

Haxeはオープンソースの高級プログラミング言語とコンパイラから成り、ECMAScriptを元にした構文のコードさまざまなターゲットの言語へとコンパイルすることを可能にします。適度な抽象化を行うため、1つのコードベースから複数のターゲットへコンパイルすることも可能です。

Haxeは強く型付けされている一方で、必要に応じて型付けを弱めることも可能です。型情報を活用すれば、ターゲットの言語では実行時にしか発見できないようなエラーをコンパイル時に検出することができます。さらに型情報は、ターゲットへの変換時に最適化や堅牢なコードを生成するためにも使用されます。

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
 

この[導入](introduction.md)の残りでは、Haxeのプログラムがどのようなものなのか、Haxeは2005年に生まれてからどのように進化してきたのか、を概要でお送りします。

[型](types.md)では、Haxeの7種類の異なる型についてとそれらがどう関わりあっているのかについて紹介します。型に関する話は、[型システム](type-system.md)へと続き、**単一化(ユニファイ)**、**型パラメータ**、**型推論**についての解説がされます。

[クラスフィールド](class-field.md)では、Haxeのクラスの構造に関する全てをあつかいます。加えて、**プロパティ**、**インラインフィールド**、**ジェネリック関数**についてもあつかいます。

[式](expression.md)では、**式**を使用して実際にいくつかの動作をさせる方法をお見せします。

[言語機能](lf.md)では、**パターンマッチング**、**文字列補間**、**デッドコード削除**のようなHaxeの詳細の機能について記述しています。ここで、Haxeの言語リファレンスは終わりです。

そして、Haxeのコンパイラリファレンスへと続きます。まずは[コンパイラの使い方](compiler-usage.md)で基本的な内容を、そして、[コンパイラの機能](cr-features.md)で高度な機能をあつかいます。最後に[マクロ](macro.md)で、ありふれたタスクをHaxeの**マクロ**がどのように単純化するのかを見ながら、刺激的なマクロの世界に挑んでいきます。

次の[Standard Library](std.md)のでは、Haxeの標準ライブラリに含まれる主要な型や概念を一つ一つ見ていきます。そして、[Haxelib](haxelib.md)でHaxeのパッケージマネージャであるHaxelibについて学びます。

Haxeは様々なターゲット間の差を吸収してくれますが、場合によってはターゲットを直接的にあつかうことが重要になります。これが、[Target Details](target-details.md)の話題です。

---

Previous section: [導入](introduction.md)

Next section: [このドキュメントについて](introduction-about-this-document.md)