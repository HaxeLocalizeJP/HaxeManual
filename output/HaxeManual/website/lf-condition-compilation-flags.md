## 6.1.1 グローバルコンパイラフラグ

Haxe 3.0以降では`haxe --help-defines`を実行することで、サポートしている[コンパイラフラグ](lf-condition-compilation.md)の一覧を取得することができます。

##### グローバルコンパイラフラグ
 
 フラグ  |  説明 
 --- | ---
<code>absolute-path</code>  |  <code>trace</code>の出力を絶対パスで行います。 
<code>advanced-telemetry</code>   |  SWFをMonocleのツールで測定できるようにします。 
<code>analyzer</code>   |  静的解析器を使った最適化を行います(実験的)。 
<code>as3</code>  |  flash9のas3のソースコードを出力する場合に定義されます。 
<code>check-xml-proxy</code>   |  xmlプロキシの使用済みフィールドを確認します。 
<code>core-api</code>   | core APIの文脈で定義されています。 
<code>core-api-serialize</code>   |  C#で、いくつかのcore APIクラスをSerializable属性でマークします。 
<code>cppia</code>   |  実験的にC++のインストラクションアセンブリを出力します 
<code>dce=&lt;mode:std&#124;full&#124;no&gt;</code>   |  [デッドコード削除](cr-dce.md)のモードを設定します(デフォルトではstd)。 
<code>dce-debug</code>   |  Show [dead code elimination](cr-dce.md) log 
<code>debug</code>   |  <code>-debug</code>をつけてコンパイルした場合に有効化されます。 
<code>display</code>   |  補完中に有効化されます。 
<code>dll-export</code>   |  実験的なリンクをつけてC++生成します。 
<code>dll-import</code>   |  実験的なリンクをつけてC++生成します。 
<code>doc-gen</code>   |  正しくドキュメントを生成するため、削除と変更をしないように振る舞います。 
<code>dump</code>   |  dumpサブディレクトリに、完全な型付け済みの抽象構文木を出力します。Haxeに似た形式で出力するには<code>dump=pretty</code>を使ってください。 
<code>dump-dependencies</code>   |  dumpサブディレクトリに、クラスの依存関係を出力をします。 
<code>dump-ignore-var-ids</code>   |  prettyではないdumpから、変数IDを削除します。(diffを取るのに役立ちます) 
<code>erase-generics</code>   |  C#でジェネリッククラスを取り消します。 
<code>fdb</code>   |  FDBの対話的なデバッグのために、flashのデバッグ情報をすべて有効化します。 
<code>file-extension</code>   |  C++ソースコードで拡張子を出力します。 
<code>flash-strict</code>   |  Flash出力でより厳密な型付けを行います。 
<code>flash-use-stage</code>   |  SWFライブラリを初期のstageに保ちます。 
<code>force-lib-check</code>   |  コンパイラが-net-libと-java-libの追加クラスを確認するように強制します(内部用)。 
<code>force-native-property</code>   |  3.1の互換性のために、すべてプロパティに<code>:nativeProperty</code>のタグ付けをします。　
<code>format-warning</code>   |  2.xの互換性のために、フォーマットされた文字列に対して警告を出します。 
<code>gencommon-debug</code>   |  GenCommonの内部用 
<code>haxe-boot</code>   |  flashのbootクラスに生成された名前の代わりに'haxe'という名前を使います。 
<code>haxe-ver</code>   |  現在のHaxeのバージョンの値です。 
<code>hxcpp-api-level</code>   |  hxcppのバージョン間の互換性を保ちます。 
<code>include-prefix</code>   | 　含有している出力ファイルにパスを付加します。 
<code>interp</code>   |  <code>--interp</code>でコンパイルされて実行される場合に定義されます。 
<code>java-ver=[version:5-7]</code>   |  ターゲットとするJavaのバージョンを設定します。 
<code>js-classic</code>   |  JavaScript出力にfunctionラッパーと、strictモードを使いません。 
<code>js-es5</code>   |  ES5に準拠した実行環境のためのJavaScriptを出力します。 
<code>js-unflatten</code>   |  packageや型でネストしたオブジェクトを出力します。 
<code>keep-old-output</code>   |  出力ディレクトリの古いコードのファイルを残します(C#/Java)。 
<code>loop-unroll-max-cost</code>   | ループ展開がキャンセルされる最大コスト(expressions * iterations、デフォルトでは250)。 
<code>macro</code>  | [マクロの文脈](macro.md)でコンパイルされた場合に定義されます。 
<code>macro-times</code>  | <code>--times</code>と一緒に使用された場合にマクロごとの時間を表示します。 
<code>net-ver=&lt;version:20-45&gt;</code>   |  ターゲットとする.NETのバージョンを設定します。 
<code>net-target=&lt;name&gt;</code>   |  .NETのターゲット名を設定します。xbox、micro _(Micro Framework)_、compact _(Compact Framework)_が、正当な名前です。 
<code>neko-source</code>  | Nekoのバイトコードではなくソースコードを出力します。 
<code>neko-v1</code>  |  Nekoの1.xとの互換性を保ちます。 
<code>network-sandbox</code>   |  ローカルファイルアクセスの代わりに、ローカルネットワークサンドボックスを使います。 
<code>no-compilation</code>   |  C++の最終コンパイルを無効化します。 
<code>no-copt</code>   |  コンパイル時の最適化を無効化します _(デバッグ用途)_ 
<code>no-debug</code>   |  C++出力からすべてのデバッグマクロを取り除きます。 
<code>no-deprecation-warnings</code>  | <code>@:deprecated</code>のフィールドが使われたことによる警告を無効化します。 
<code>no-flash-override</code>   |  flashのみで、いくつかの基本クラスでのoverrideをHXサフィックスのついたメソッドで代替します。 
<code>no-opt</code>   |  最適化を無効化します。 
<code>no-pattern-matching</code>   |  パターンマッチングを無効化します。 
<code>no-inline</code>   |  [インライン化](class-field-inline.md)を無効化します。 
<code>no-root</code>   |  GenCSの内部用 
<code>no-macro-cache</code>   |  マクロの文脈でのキャッシュを無効化します。 
<code>no-simplify</code>   |  簡易化のフィルタを無効化します。 
<code>no-swf-compress</code>   |  SWF出力の圧縮を無効化します。 
<code>no-traces</code>   |  すべての<code>trace</code>呼び出しを無効化します。 
<code>php-prefix</code>   |  <code>--php-prefix</code>をつけてコンパイルした場合です。 
<code>real-position</code>   |  C#ターゲットで、Haxeのソースマップを無効化します。 
<code>replace-files</code>   |  GenCommonの内部用です。 
<code>scriptable</code>   |  GenCPPの内部用です。 
<code>shallow-expose</code>   |  Haxeが生成したクロージャのスコープについて、windowオブジェクトの記述なしでのアクセスを許可します。 
<code>source-map-content</code>   |  JSのソースマップの一部として、.hxのソースコードを含ませます。 
<code>swc</code>   |  SWFの代わりにSWCを出力します。 
<code>swf-compress-level=&lt;level:1-9&gt;</code>   |  SWF出力の圧縮レベルを指定します。 
<code>swf-debug-password=&lt;yourPassword&gt;</code>   |  デバッグ用のパスワードを指定します。このパスワードはMD5アルゴリズムを使って暗号化されて、swfをデバッグするための認証解除を防ぎます。-D fdbを指定しない場合パスワードは使われません。 
<code>swf-direct-blit</code>   |  グラフィックの転送をするのにハードウェアアクセラレーションを使います。 
<code>swf-gpu</code>   |  グラフィックを描画するのにGPUを使います。 
<code>swf-metadata=&lt;file.xml&gt;</code>   |  swf内に<code>&lt;file.xml&gt;</code>をメタデータとして埋め込みます。 
<code>swf-preloader-frame</code>   |  SWFの最初に空白フレームを挿入します。<code>-D flash-use-stage</code>、<code>-swf-lib</code>と合わせて使います。 
<code>swf-protected</code>   |  Haxeのprivateを、SWF内でpublicではなくprotectedを使うようにコンパイルします。 
<code>swf-script-timeout</code>   |  ActionScriptがタイムアウトのダイアログを表示するまでの最大時間を設定します(秒数で)。 
<code>swf-use-doabc</code>   |  DoAbcDefineのswfタグの代わりにDoAbcを使います。 
<code>sys</code>   |  システムのすべてのプラットフォームで定義されています。 
<code>unsafe</code>   |  C#ターゲットでunsafeのコードを許容します 
<code>use-nekoc</code>   |  内部のものの代わりにnekocのコンパイラを使います。 
<code>use-rtti-doc</code>   |  コンパイル中にドキュメントにアクセスできるようにします。 
<code>vcproj</code>   |  GenCPPの内部用。

---

Previous section: [条件付きコンパイル](lf-condition-compilation.md)

Next section: [extern](lf-externs.md)