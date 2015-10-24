## 9.7 初期化マクロ

初期化マクロはコマンドラインから`--macro callExpr(args)`コマンドを使って呼び出します。これにより、コンテクストを生成した後の、`-main`の引数が型付けされるより前に呼び出されるコールバックを登録します。これにより様々な方法でコンパイラの設定ができます。

`--macro`の引数が単なる識別子の呼び出しだった場合、その識別子はHaxe標準ライブラリの`haxe.macro.Compiler`内から検索されます。このクラスには便利な初期化マクロがいくつもあります。詳しくは[API](http://api.haxe.org//haxe/macro/Compiler.html)を記載されています。

例えば、`include`マクロではパッケージをまるまる、必要であれば再帰的にコンパイルに含めることができます。その場合のコマンドライン引数は`--macro include('some.pack', true)`といった形になります。

もちろん、カスタムの初期化マクロを定義して実際のコンパイルの前に様々な作業をさせることもできます。そういったマクロは`--macro some.Class.theMacro(args)`の形で呼び出します。例えば、すべてのマクロに共通の[コンテクスト](macro-context.md)が使われるので、初期化マクロで他のマクロの設定のための静的フィールドに値を設定することができます。

---

Previous section: [ビルド順序](macro-limitations-build-order.md)

Next section: [Standard Library](std.md)