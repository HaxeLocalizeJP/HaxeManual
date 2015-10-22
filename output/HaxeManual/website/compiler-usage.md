## 7 コンパイラの使い方

##### 基本的な使い方

Haxeコンパイラは基本的にはコマンドラインから以下の2つの質問に答える引数をつけて呼び出します。

* 何をコンパイルするのか?
* 何を出力するのか?

最初の質問に答えるためには、`-cp path`引数でクラスパスを指定し、`-main dot_path`引数でコンパイル対象のメインクラスを指定すれば十分です。これでHaxeコンパイラはメインクラスのファイルを解決しコンパイルを始めます。

2つ目の質問に答えるためには、目的のターゲット特有の引数を指定します。Haxeターゲットはそれぞれ専用のコマンドラインオプションを持っています。例えば、JavaScriptは`-js file_name`、PHPは`-php directory`です。ターゲットによってファイル名を指定するもの(`-js`、`-swf`、`-neko`、`-python`が該当)と、ディレクトリを指定するものがあります。

##### よく使う引数

**入力:**

* `-cp path` `.hx`のソースファイルまたはパッケージ(サブディレクトリ)が置かれているディレクトリのパスを追加します。
* `-lib library_name` [Haxelib](haxelib.md)のライブラリを追加します。
* `-main dot_path` メインクラスを設定します。

**出力:**

* `-js file_name` 指定されたファイルに[JavaScript](target-javascript.md)のソースコードを出力します。
* `-as3 directory` 指定されたディレクトリにActionScript3のソースコードを出力します。
* `-swf file_name` 指定されたファイルに[Flash](target-flash.md)の.swfを出力します。
* `-neko file_name` 指定されたファイルに[Neko](#)のバイナリを出力します。
* `-php directory` 指定されたディレクトリに[PHP](target-php.md)のソースコードを出力します。
* `-cpp directory` 指定されたディレクトリに[C++](target-cpp.md)のソースコードを出力して、ネイティブのC++コンパイラでコンパイルします。
* `-cs directory` 指定されたディレクトリに[C#](#)のソースコードを出力します。
* `-java directory` 指定されたディレクトリに[Java](#)のソースコードを出力して、Javaコンパイラでコンパイルします。
* `-python file_name` 指定されたファイルに[Python](target-python.md)のソースコードを出力します。

---

Previous section: [インラインコンストラクタ](lf-inline-constructor.md)

Next section: [コンパイラの機能](cr-features.md)