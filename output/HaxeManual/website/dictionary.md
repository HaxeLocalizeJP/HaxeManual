<a id="define-dollar-type" class="anch"></a>

##### `$type`
`$type`は関数のように呼び出せるコンパイル時の仕組みで、一つの引数を持ちます。コンパイラは引数の式を評価し、そしてその式の型を出力します。

<a id="define-class-t" class="anch"></a>

##### `Class<T>`

この型はすべてのクラスの型と一致します。つまり、すべてのクラス（インスタンスではなくクラス）をこれに代入することができます。コンパイル時に、`Class<T>`は全てのクラスの型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。

この型は、任意のクラスを要求するようなAPIで役立ちます。例えば、[HaxeリフレクションAPI](std-reflection.md)のいくつかのメソッドがこれに当てはまります。


<a id="define-enum-t" class="anch"></a>

##### `Enum<T>`
すべての列挙型と一致する型です。コンパイル時に、`Enum<T>`は全ての列挙型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。

<a id="define-null-t" class="anch"></a>

##### `Null<T>`
静的ターゲットでは、`Null<Int>`、`Null<Float>`、`Null<Bool>`の型で`null`を許容することが可能になります。動的ターゲットでは`Null<T>`に効果はありません。また、`Null<T>`はその型が`null`を持つことを表すドキュメントとしても使うことができます。

<a id="define-bool" class="anch"></a>

##### Bool
真（**true**）または、偽（**false**）のどちらかになる値を表します。

<a id="define-enumvalue" class="anch"></a>

##### EnumValue
EnumValueはすべての列挙型のインスタンスと一致する特別な型です。この型はHaxeの標準ライブラリでは、すべての列挙型に対して可能な操作を提供するのに使われます。またユーザーのコードでは、特定の列挙型ではなく任意の列挙型のインスタンスを要求するAPIで利用できます。

<a id="define-float" class="anch"></a>

##### Float
IEEEの64bit倍精度浮動小数点数を表します。

<a id="define-int" class="anch"></a>

##### Int
整数を表します。

<a id="define-lambda" class="anch"></a>

##### Lambda
Lambda is a functional language concept within Haxe that allows you to apply a function to a list or [iterators](lf-iterators.md). The Lambda class is a collection of functional methods in order to use functional-style programming with Haxe.

<a id="define-nullable" class="anch"></a>

##### null許容
Haxeでは、ある型が値として`null`をとる場合にnull許容であるとみなす。

<a id="define-private-type" class="anch"></a>

##### private型
型は`private`の修飾子を使って可視性を下げることが可能です。`private`修飾子をつけると、その型を定義している[モジュール](dictionary.md#define-module)以外からは、直接アクセスできなくなります。

`private`な型は`public`な型とは異なり、パッケージにはふくまれません。

<a id="define-string" class="anch"></a>

##### String
A String is a sequence of characters.

<a id="define-void" class="anch"></a>

##### Void
Voidは型が存在しないことを表します。特定の場面（主に関数）で値を持たないことを表現するのに使います。

<a id="define-accessor-method" class="anch"></a>

##### アクセサメソッド
型が`T`でフィールド名が`field`のフィールドに対する**アクセサメソッド**は、`Void->T`型のフィールド名`get_field`の**ゲッター**または`T->T`型のフィールド名`set_field`の**セッター**です。アクセサメソッドは略して**アクセサ**とも呼びます。

<a id="define-class-field" class="anch"></a>

##### クラスフィールド
クラスフィールドはクラスに属する変数、プロパティまたはメソッドです。これは静的、または非静的になることができます。**静的メソッド**と**メンバ変数**といった名前を使うのと同じように、非静的フィールドについては**メンバ**フィールドと呼びます。

<a id="define-compiler-flag" class="anch"></a>

##### コンパイラフラグ
コンパイラフラグはコンパイルの過程に影響をあたえる、設定可能な値です。このフラグは`-D key=value`あるいは単に`-D key`（この場合デフォルト値の`"1"`になる）の形式でコマンドラインから指定できます。そのほかにも、コンパイラはコンパイルの過程で別のステップへ情報伝達するために、内部的にいくつかのフラグを設定します。

<a id="define-generic-type-parameter" class="anch"></a>

##### ジェネリック型パラメータ
型パラメータを持っているクラスまたはメソッドがジェネリックであるとき、その型パラメータもジェネリックであるという。

<a id="define-default-value" class="anch"></a>

##### デフォルト値

  基本型は、静的ターゲットではデフォルト値は以下になります。
  
* `Int`: `0`。
* `Float`: Flashでは`NaN`。その他の静的ターゲットでは`0.0`。
* `Bool`: `false`。



<a id="define-macro-context" class="anch"></a>

##### マクロコンテクスト
マクロコンテクストとはマクロが実行される環境です。マクロの種別によって、クラスのビルドや、関数の型付けなどを行います。コンテクストについての情報は`haxe.macro.Context` APIを通して入手できます。

<a id="define-module" class="anch"></a>

##### モジュール

すべてのHaxeのコードはモジュールに属しており、パスを使って指定されます。要するに、.hxファイルそれぞれが一つのモジュールを表し、その中にいくつか型を置くことができます。型は`private`にすることが可能で、その場合はその型の属するモジュールからしかアクセスできません。

<a id="define-covariance" class="anch"></a>

##### 共変性
[複合型](dictionary.md#define-compound-type)がそれを構成する型よりも一般な型で構成される複合型に代入できる場合に、共変であるという。 つまり、読み込みのみが許されて書き込みができない場合です。

<a id="define-dynamic-target" class="anch"></a>

##### 動的ターゲット
動的ターゲットは型に関して寛容で、基本型が`null`を許容します。これはJavaScriptとPHP、Neko、Flash 6-8ターゲットが当てはまります。

<a id="define-unification" class="anch"></a>

##### 単一化
型Aの型Bでの単一化というのは、AがBに代入可能かを調べる指向性を持つプロセスです。型が[単相](types-monomorph.md)の場合または単相をふくむ場合は、それを変化させることができます。

<a id="define-contravariance" class="anch"></a>

##### 反変性
[複合型](dictionary.md#define-compound-type)がそれを構成する型よりも特殊な型で構成される複合型に代入できる場合に、反変であるという。 つまり、書き込みのみが許されて読み込みができない場合です。

<a id="define-name" class="anch"></a>

##### 名前

名前は次のいずれかに紐づきます。

* 型
* ローカル変数
* ローカル関数
* フィールド


<a id="define-type-path" class="anch"></a>

##### 型のパス
(ドット区切りの)型のパスはパッケージ、モジュール名、型名から成ります。この一般的な形は`pack1.pack2.packN.ModuleName.TypeName`です。

<a id="define-underlying-type" class="anch"></a>

##### 基底型

抽象型の基底型は、実行時にその抽象型を表すために使われる型です。基底型はたいていの場合は具体型ですが、別の抽象型である場合もあります。


<a id="define-definition" class="anch"></a>

##### 定義の名前
定義の説明

<a id="define-ast" class="anch"></a>

##### 抽象構文木（AST：Abstract Syntax Tree）
抽象構文木はHaxeのコードを構文解析して型付けされた構造へと変換した結果です。この構造はHaxe標準ライブラリの`haxe/macro/Expr.hx`ファイルで定義されている型をつかってマクロから利用可能です。

<a id="define-write-access" class="anch"></a>

##### 書き込みアクセス
フィールドへの書き込みアクセスは、[フィールドアクセス式](expression-field-access.md)に`obj.field = value`の形式で値の代入することで発生します。また、`obj.field += value`の式`+=`のような特殊な代入演算子を使うと、書き込みアクセスと[読み込みアクセス](dictionary.md#define-read-access)の両方が発生します。

<a id="define-structural-subtyping" class="anch"></a>

##### 構造的部分型付け
構造的部分型付けは、同じ構造を持つ型の暗黙の関係を示します。

<a id="define-physical-field" class="anch"></a>

##### 物理的フィールド
以下のいずれかの場合にフィールドが**物理的**であると考えられます

* [変数](class-field-variable.md)
* 読み込みアクセスか書き込みアクセスのアクセス識別子が`default`または`null`である[プロパティ](class-field-property.md)
* `:isVar`[メタデータ](lf-metadata.md)がつけられた[プロパティ](class-field-property.md)



<a id="define-compound-type" class="anch"></a>

##### 複合型

複合型というのは、型の一部として型を持つ型です。[型パラメータ](type-system-type-parameters.md)を持つ型や、[関数](types-function.md)型がこれに当たります。


<a id="define-expected-type" class="anch"></a>

##### 要求される型
要求される型は、式の型が式が型付けされるより前にわかっている場合に現れます。例えば、式が関数の呼び出しの引数の場合です。この場合、[トップダウンの推論](type-system-top-down-inference.md)と呼ばれる方法で、式に型が伝搬します。

<a id="define-read-access" class="anch"></a>

##### 読み込みアクセス
読み込みアクセスは右辺側で[フィールドアクセス式](expression-field-access.md)が使われると発生します。これには`obj.field()`の形の関数呼び出しもふくまれるため、この`field`も読み込みアクセスがされます。

<a id="define-identifier" class="anch"></a>

##### 識別子

Haxeの識別子はアンダースコア(`_`)、ドル(`$`)、小文字(`a-z`)、大文字(`A-Z`)のいずれかから始まり、任意の`_`、`A-Z`、`a-z`、`0-9`のつなぎ合わせが続きます。

さらに使用する状況によって以下の制限が加わります。これらは型付けの時にチェックされます。

* 型の名前は大文字(`A-Z`)か、アンダースコア(`_`)で始まる。
* [名前](dictionary.md#define-name)では、先頭にドル記号は使えません。(ドル記号はほとんどの場合、[マクロの実体化](macro-reification.md)に使われます)


<a id="define-static-target" class="anch"></a>

##### 静的ターゲット
静的ターゲットでは、その言語自体が基本型が`null`を許容しないような型システムを持っています。この性質はFlash、C++、Java、C#ターゲットに当てはまります。

<a id="define-static-extension" class="anch"></a>

##### 静的拡張
静的拡張はすでに存在している型に対して、元のソースコードを変更することなく見せかけの拡張を行います。Haxeの静的拡張は最初の引数が拡張する対象の型である静的メソッドを宣言して、それ`using`を使って記述しているクラス内に持ちこむことで使用できます。