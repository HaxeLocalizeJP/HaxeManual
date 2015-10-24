## 8.1 ビルトインのコンパイラメタデータ

Haxe 3.0以降では、`haxe --help-metas`を実行することで定義済みのコンパイラメタデータのリストを得ることができます。

##### グローバルメタデータ
 
 メタデータ  |  説明   |  プラットフォーム 
 --- | --- | ---
@:abi  | ABI呼び出し規約を使う   | cpp 
@:abstract  |  基底クラスの実装を[抽象型](types-abstract.md)として使います。   |  cs  java 
@:access _(Target path)_   |   型またはフィールドへのプライベートなアクセスを強制する。詳しくは[アクセス制御](lf-access-control.md)   |  all 
@:allow _(Target path)_   |   型またはフィールドからのプライベートなアクセスを許可する。詳しくは[アクセス制御](lf-access-control.md)   |  all 
@:analyzer  | 静的アナライザを設定する   |  all 
@:annotation   |  Annotation (<code>@interface</code>) definitions on <code>-java-lib</code> imports will be annotated with this metadata. Haxeでコンパイルした型には影響ありません    |  java 
@:arrayAccess   |  抽象型への[配列アクセス](types-abstract-array-access.md)を許可する   |  all 
@:autoBuild _(Build macro call)_   |   <code>@:build</code>メタデータをその型のすべての子クラス、実装クラスに反映する。詳しくは[autobuildマクロ](macro-auto-build.md)   |  all 
@:bind   |  SWFライブラリで定義されているクラスを上書きします   |  flash 
@:bitmap _(Bitmap file path)_   |  与えられたビットマップデータをクラスに埋め込む(<code>flash.display.BitmapData</code>の継承が必要)    |  flash 
@:bridgeProperties   |  クラスのすべてのHaxeプロパティに、ネイティブのプロパティのブリッジを用意する   |  cs 
@:build _(Build macro call)_   |   マクロからクラスまたは列挙型を構築する。詳しくは[型構築](macro-type-building.md)   |  all 
@:buildXml   |  Build.xmlに挿入するxmlデータを指定する。   |  cpp 
@:callable   |  抽象型で基底型の関数呼び出しのアクセスをできるようにする。   |  all 
@:classCode   |  クラスにプラットフォームネイティブのコードを挿入する   |  cs  java 
@:commutative   |  抽象型の2項演算子の各項を交換可能にする   |  all 
@:compilerGenerated   |  コンパイラから生成されたフィールドをマークする。ユーザーは使用すべきでは無い。   |  cs  java 
@:coreApi  |  このクラスをコアAPIのクラスとして認識する。（APIチェックを強制する）   |  all 
@:coreType   |  抽象型を[コアタイプ](types-abstract-core-type.md)として認識する。そのため、型には実装があってはいけない。   |  all 
@:cppFileCode   |  C++の出力ファイルに挿入するコード   |  cpp 
@:cppInclude   |  C++の出力ファイルに含めるファイル   |  cpp 
@:cppNamespaceCode   |     |  cpp 
@:dce   |  <code>-dce full</code>が指定されていない場合でも、[デッドコード削除](cr-dce.md)を強制する   |  all 
@:debug   |  <code>-debug</code>が指定されていない場合でも、出力するSWFにデバッグ情報を強制する    |  flash 
@:decl    |      |  cpp 
@:defParam   |     |  all 
@:delegate   |  <code>-net-lib</code>のデリゲートで自動的に追加される    |  cs 
@:depend   |      |  cpp 
@:deprecated    |  <code>-java-lib</code>の<code>@Deprecated</code>で修飾されているフィールドで自動的に追加される。Haxeでコンパイルされる型には何の影響も与えない。   |  java 
@:event   |  <code>-net-lib</code>のイベントに自動的に追加される。Haxeでコンパイルされる型には何の影響も与えない。    |  cs 
@:enum   |  抽象型の定義につけることで有限の値のセットを定義する。詳しくは[抽象型列挙体](types-abstract-enum.md)   |  all 
@:expose _(?Name=Class path)_   |  クラスを<code>window</code>オブジェクトか、node.jsの場合は<code>exports</code>で使用可能にする。詳しくは[HaxeのクラスをJavaScriptに露出させる](target-javascript-expose.md)  |  js 
@:extern   |  フィールドを<code>extern</code>としてマークする。結果として出力されなくなる。   |  all 
@:fakeEnum _(Type name)_   |  列挙型を指定した型の集合としてあつかう。   |  all 
@:file(File path)   |  SWFターゲットに指定したバイナリファイルを含めてそのクラスと関連づける。（<code>flash.utils.ByteArray</code>の継承が必要）   |  flash 
@:final   |  クラスが継承されるのを妨害する   |  all 
@:font _(TTF path Range String)_   |  指定したTrueTypeフォントをクラスに埋め込む（<code>flash.text.Font</code>の継承が必要）   |  flash 
@:forward _(List of field names)_   | 基底型から[フィールドアクセスの繰り上げ](types-abstract-forward.md)を行う。   |  all 
@:from    |  抽象型のフィールドで、その型からのキャスト操作をその関数で定義する。詳しくは[暗黙のキャスト](types-abstract-implicit-casts.md)。   |  all 
@:functionCode   |      |  cpp 
@:functionTailCode   |     |  cpp 
@:generic  |  クラスまたはクラスフィールドを[ジェネリック](type-system-generic.md)としてマークして、すべてのパラメータの組み合わせについて出力を行う。   |  all 
@:genericBuild   |  型のインスタンスを指定したマクロを使って生成する。    |  all 
@:getter _(Class field name)_   |  指定したフィールドにネイティブのゲッター関数を生成する。    |  flash 
@:hack    |  <code>@:final</code>のマークがされているクラスの継承を許可する。   |  all 
@:headerClassCode   |  そのヘッダーで、生成されたクラスにコードを挿入する。   |  cpp 
@:headerCode    |  生成されたヘッダファイルにコードを挿入する。   |  cpp 
@:headerNamespaceCode   |     |  cpp 
@:hxGen   |  Haxeによって生成されたexternクラスに付く   |  cs  java 
@:ifFeature _(Feature name)_   |  指定された機能がコンパイルに含まれていた場合に、フィールドを[デッドコード削除](cr-dce.md)から保護する。   |  all 
@:include  |      |  cpp 
@:initPackage   |     |  all 
@:internal   |  クラスやフィールドに<code>internal</code>アクセスの修飾をする。   |  cs  java 
@:isVar   |  物理的フィールドが不要なプロパティに対して、物理的フィールドを強制する。   |  all 
@:javaCanonical _(Output type package,Output type name)_  |  Javaターゲットで型の正規パスを指定するのに使われる。   |  java 
@:jsRequire   |  その<code>extern</code>に必要なJavaScriptモジュールを出力する。   |  js 
@:keep    |  [デッドコード削除](cr-dce.md)から、フィールドや型を保護する。   |  all 
@:keepInit   |  クラスからすべてのフィールドが削除された場合でも、[デッドコード削除](cr-dce.md)から保護する。   |  all 
@:keepSub  |  すべての実装クラス、子孫クラスに<code>@:keep</code>メタデータを継承する。   |  all 
@:macro   |  _(deprecated)_   |  all 
@:mergeBlock   |  修飾したブロックを現在のスコープにマージする。  |  all 
@:meta    |  内部的にクラスフィールドがメタデータフィールドであるとマークするのに使われる。   |  all 
@:multiType _(Relevant type parameters)_   |  抽象型でその<code>@:to</code>関数の中からthisの型を選択する。   |  all 
@:native _(Output type path)_   |  クラスと列挙型のパスを出力の過程で書き換える。   |  all 
@:nativeChildren   |  型のそのすべての子を<code>extern</code>であるかのように扱う。（プラットフォームネイティブ）   |  cs java 
@:nativeGen   |  型を<code>extern</code>であるかのように扱う。（プラットフォームネイティブ）   |  cs  java 
@:nativeProperty   |  動的な使用がされる場合であっても、ネイティブのプロパティを使う。   |  cpp 
@:noCompletion   |  そのフィールドをコンパイラの[補完](cr-completion.md)の候補に含めない。   |  all 
@:noDebug  |  <code>-debug</code>が設定されている場合でもSWFにデバッグ情報を含めない。    |  flash 
@:noDoc   |  型がドキュメント出力に含まれないようにする。   |  all 
@:noImportGlobal   |  <code>import Class.*</code>で静的フィールドが含まれるのを妨害します。   |  all 
@:noPrivateAccess   |  指定した式からの、プライベートアクセスを禁止します。   |  all 
@:noStack  |      |  cpp 
@:noUsing  |  フィールドが<code>using</code>で使用されるのを防ぎます。   |  all 
@:nonVirtual  |  関数をvirtualでないと宣言する。   |  cpp 
@:notNull  |  抽象型が[<code>null</code>値](types-nullability.md)を許容しないことを宣言する。   |  all 
@:ns   |  SWFのジェネレータが名前空間を扱うために内部的に使う。    |  flash 
@:op _(The operation)_   |  抽象型のフィールドを[演算子オーバーロード](types-abstract-operator-overloading.md)として定義する。   |  all 
@:optional   |  構造体のフィールドをオプションのものとしてマークする。詳しくは[オプション引数](types-nullability-optional-arguments.md)   |  all 
@:overload _(Function specification)_   |  フィールドが異なる引数の型で呼び出しされるのを許可する。対象の関数は式を持てない。   |  all 
@:privateAccess   |  指定された式からのあらゆるプライベートアクセスを許可する。   |  all 
@:property   |  プロパティフィールドをネイティブのC#プロパティにコンパイルされるようにマークする。    |  cs 
@:protected   |  クラスフィールドを<code>protected</code>としてマークする。   |  all 
@:public   |  クラスフィールドを<code>public</code>としてマークする。  |  all 
@:publicFields   |  クラスのすべてのクラスフィールドを<code>public</code>にする。   |  all 
@:pythonImport   |  <code>extern</code>クラス対してpythonのインポート文を生成する。   |  python 
@:readOnly   |  ネイティブの<code>readonly</code>キーワードを付けたフィールドを出力する。    |  cs 
@:remove   |  インターフェースをすべての実装クラスから出力前に削除する。   |  all 
@:require _(Compiler flag to check)_   |  特定の[コンパイラフラグ](lf-condition-compilation.md)が指定されている場合のみアクセスを許可する。   |  all 
@:rtti    |  実行時型情報を追加する。詳しくは[RTTI](cr-rtti.md)。   |  all 
@:runtime   |     |  all 
@:runtimeValue   |  抽象型を実行時の値としてマークする。   |  all 
@:selfCall   |  メソッド呼び出しをオブジェクトそのものの呼び出しに変換する。   |  js 
@:setter _(Class field name)_   |  指定したフィールドのネイティブのセッター関数を生成する。    |  flash 
@:sound _(File path)_   |  _.wav_または_.mp3_ファイルをSWFを埋め込んでクラスに紐づける。（<code>flash.media.Sound</code>の継承が必要）   |  flash 
@:sourceFile   |  外部クラスのソースコードのファイル名。   |  cpp 
@:strict   |  C#のネイティブ属性、Javaのメタデータを宣言するのに使う。型チェックがされる。   |  cs java 
@:struct   |  クラスを構造体としてマークする。    |  cs 
@:structAccess   |  <code>extern</code>クラスをポインタ('->')ではなく構造体アクセス('.')を使うようにマークする。   |  cpp 
@:suppressWarnings   |  出力されるJavaクラスにSuppressWarningsの修飾を行う。   |  java 
@:throws _(Type as String)_   |  <code>throws</code>宣言を出力される関数に追加する。    |  java 
@:to   |  抽象型のフィールドで、その型へのキャスト操作をその関数で定義する。詳しくは[暗黙のキャスト](types-abstract-implicit-casts.md)。   | all 
@:transient   |  クラスフィールドに<code>transient</code>フラグを追加する。   |  java 
@:unbound   |  コンパイラの内部で無制限のグローバル変数を表すのに使う。   |  all 
@:unifyMinDynamic   |  型の集合を`Dynamic`に単一化するのを許可する。   |  all 
@:unreflective   |     |  cpp 
@:unsafe   |  クラスまたはメソッドでC#の<code>unsafe</code>フラグを宣言する。    |  cs 
@:usage   |     |  all 
@:value   |  フィールドや関数の引数のデフォルト値を記録するのに使う。   |  all 
@:void   |  C++ネイティブの'void'を戻り値に使う。   |  cpp 
@:volatile   |     |  cs  java

---

Previous section: [コンパイラの機能](cr-features.md)

Next section: [デッドコード削除](cr-dce.md)