<a id="dictionary.md-define-dollar-type" class="anch"></a>

##### `$type`
`$type`は関数のように呼び出せるコンパイル時の仕組みで、一つの引数を持ちます。コンパイラは引数の式を評価し、そしてその式の型を出力します。

<a id="dictionary.md-define-class-t" class="anch"></a>

##### `Class<T>`

この型はすべてのクラスの型と一致します。つまり、すべてのクラス(インスタンスではなくクラス)をこれに代入することができます。コンパイル時に、`Class<T>`は全てのクラスの型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。

この型は、任意のクラスを要求するようなAPIで役立ちます。例えば、[HaxeリフレクションAPI](std-reflection)のいくつかのメソッドがこれに当てはまります。


<a id="dictionary.md-define-enum-t" class="anch"></a>

##### `Enum<T>`
すべての列挙型と一致する型です。コンパイル時に、`Enum<T>`は全ての列挙型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。

<a id="dictionary.md-define-null-t" class="anch"></a>

##### `Null<T>`
静的ターゲットでは、`Null<Int>`、`Null<Float>`、`Null<Bool>`の型で`null`を許容することが可能になります。動的ターゲットでは`Null<T>`に効果はありません。また、`Null<T>`はその型が`null`を持つことを表すドキュメントとしても使うことができます。

<a id="dictionary.md-define-ast" class="anch"></a>

##### Abstract Syntax Tree (AST)
The AST is the result of **parsing** Haxe code into a typed structure. This structure is exposed to macros through the types defined in the file `haxe/macro/Expr.hx` of the Haxe Standard Library.

<a id="dictionary.md-define-accessor-method" class="anch"></a>

##### Accessor method
An **accessor method** (or short **accessor**) for a field named `field` of type `T` is a **getter** named `get_field` of type `Void->T` or a **setter** named `set_field` of type `T->T`.

<a id="dictionary.md-define-bool" class="anch"></a>

##### Bool
真(**true**)または、偽(**false**)のどちらかになる値を表す。

<a id="dictionary.md-define-class-field" class="anch"></a>

##### Class Field
A class field is a variable, property or method of a class which can either be static or non-static. Non-static fields are referred to as **member** fields, so we speak of e.g. a **static method** or a **member variable**.

<a id="dictionary.md-define-compiler-flag" class="anch"></a>

##### Compiler Flag
A compiler flag is a configurable value which may influence the compilation process. Such a flag can be set by invoking the command line with `-D key=value` or just `-D key`, in which case the value defaults to `"1"`. The compiler also sets several flags internally to pass information between different compilation steps.

<a id="dictionary.md-define-enumvalue" class="anch"></a>

##### EnumValue
EnumValueはすべての列挙型のインスタンスと一致する特別な型です。この型はHaxeの標準ライブラリでは、すべての列挙型に対して可能な操作を提供するのに使われます。またユーザーのコードでは、特定の列挙型ではなく任意の列挙型のインスタンスを要求するAPIで利用できます。

<a id="dictionary.md-define-float" class="anch"></a>

##### Float
IEEEの64bit倍精度浮動小数点数を表します。

<a id="dictionary.md-define-int" class="anch"></a>

##### Int
整数を表します。

<a id="dictionary.md-define-lambda" class="anch"></a>

##### Lambda
Lambda is a functional language concept within Haxe that allows you to apply a function to a list or [iterators](lf-iterators). The Lambda class is a collection of functional methods in order to use functional-style programming with Haxe.

<a id="dictionary.md-define-macro-context" class="anch"></a>

##### Macro Context
The macro context is the environment in which the macro is executed. Depending on the macro type, it can be considered to be a class being built or a function being typed. Contextual information can be obtained through the `haxe.macro.Context` API.

<a id="dictionary.md-define-nullable" class="anch"></a>

##### Nullable
Haxeでは、ある型が値として`null`をとる場合に**Nullable**(null許容型)であるとみなす。

<a id="dictionary.md-define-physical-field" class="anch"></a>

##### Physical field
A field is considered to be **physical** if it is either

* a [variable](class-field-variable)
* a [property](class-field-property) with the read-access or write-access identifier being `default` or `null`
* a [property](class-field-property) with `:isVar` [metadata](lf-metadata)



<a id="dictionary.md-define-private-type" class="anch"></a>

##### private型
型は`private`の修飾子を使って可視性を下げることが可能です。`private`修飾子をつけると、その型を定義している[モジュール](dictionary.md-define-module)以外からは、直接アクセスできなくなります。

`private`な型は`public`な型とは異なり、パッケージにはふくまれません。

<a id="dictionary.md-define-read-access" class="anch"></a>

##### Read Access
A read access to a field occurs when a right-hand side [field access expression](expression-field-access) is used. This includes calls in the form of `obj.field()`, where `field` is accessed to be read.

<a id="dictionary.md-define-static-extension" class="anch"></a>

##### Static Extension
A static extension allows pseudo-extending existing types without modifying their source. In Haxe this is achieved by declaring a static method with a first argument of the extending type and then bringing the defining class into context through `using`.

<a id="dictionary.md-define-string" class="anch"></a>

##### String
A String is a sequence of characters.

<a id="dictionary.md-define-void" class="anch"></a>

##### Void
Voidは型が存在しないことを表します。特定の場面(主に関数)で値を持たないことを表現するのに使います。

<a id="dictionary.md-define-write-access" class="anch"></a>

##### Write Access
A write access to a field occurs when a [field access expression](expression-field-access) is assigned a value in the form of `obj.field = value`. It may also occur in combination with [read access](dictionary.md-define-read-access) for special assignment operators such as `+=` in expressions like `obj.field += value`.

<a id="dictionary.md-define-generic-type-parameter" class="anch"></a>

##### ジェネリック型パラメータ
型パラメータを持っているクラスまたはメソッドがジェネリックであるとき、その型パラメータもジェネリックであるという。

<a id="dictionary.md-define-default-value" class="anch"></a>

##### デフォルト値

  基本型は、静的ターゲットではデフォルト値は以下になります。
  
* `Int`: `0`。
* `Float`: Flashでは`NaN`。その他の静的ターゲットでは`0.0`。
* `Bool`: `false`。



<a id="dictionary.md-define-module" class="anch"></a>

##### モジュール

すべてのHaxeのコードはモジュールに属しており、パスを使って指定されます。要するに、.hxファイルそれぞれが一つのモジュールを表し、その中にいくつか型を置くことができます。型は`private`にすることが可能で、その場合はその型の属するモジュールからしかアクセスできません。

<a id="dictionary.md-define-covariance" class="anch"></a>

##### 共変性
[複合型](dictionary.md-define-compound-type)がそれを構成する型よりも一般な型で構成される複合型に代入できる場合に、共変であるという。 つまり、読み込みのみが許されて書き込みができない場合です。

<a id="dictionary.md-define-dynamic-target" class="anch"></a>

##### 動的ターゲット
動的ターゲットは型に関して寛容で、基本型が`null`を許容します。これはJavaScriptとPHP、Neko、Flash 6-8ターゲットが当てはまります。

<a id="dictionary.md-define-unification" class="anch"></a>

##### 単一化
型Aの型Bでの単一化というのは、AがBに代入可能かを調べる指向性を持つプロセスです。型が[単相](types-monomorph)の場合または単相をふくむ場合は、それを変化させることができます。

<a id="dictionary.md-define-contravariance" class="anch"></a>

##### 反変性
[複合型](dictionary.md-define-compound-type)がそれを構成する型よりも特殊な型で構成される複合型に代入できる場合に、反変であるという。 つまり、書き込みのみが許されて読み込みができない場合です。

<a id="dictionary.md-define-name" class="anch"></a>

##### 名前

名前は次のいずれかにひもづきます。

* 型
* ローカル変数
* ローカル関数
* フィールド


<a id="dictionary.md-define-type-path" class="anch"></a>

##### 型のパス
(ドット区切りの)型のパスはパッケージ、モジュール名、型名から成ります。この一般的な形は`pack1.pack2.packN.ModuleName.TypeName`です。

<a id="dictionary.md-define-underlying-type" class="anch"></a>

##### 基底型

抽象型の基底型は、実行時にその抽象型を表すために使われる型です。基底型はたいていの場合は具体型ですが、別の抽象型である場合もあります。


<a id="dictionary.md-define-definition" class="anch"></a>

##### 定義の名前
定義の説明

<a id="dictionary.md-define-structural-subtyping" class="anch"></a>

##### 構造的部分型付け
構造的部分型付けは、同じ構造を持つ型の暗黙の関係を示します。

<a id="dictionary.md-define-compound-type" class="anch"></a>

##### 複合型(Compound Type)

複合型というのは、従属する型を持つ型です。[型パラメータ](type-system-type-parameters)を持つ型や、[関数](types-function)型がこれに当たります。


<a id="dictionary.md-define-expected-type" class="anch"></a>

##### 要求される型
要求される型は、式の型が式が型付けされるより前にわかっている場合に現れます。例えば、式が関数の呼び出しの引数の場合です。この場合、[トップダウンの推論](type-system-top-down-inference)と呼ばれる方法で、式に型が伝搬します。

<a id="dictionary.md-define-identifier" class="anch"></a>

##### 識別子

Haxeの識別子は、アンダースコア`_`、ドル`$`、小文字`a-z`、大文字`A-Z`のいずれかから始まり、任意の`_`、`A-Z`、`a-z`、`0-9`のつなぎ合わせが続きます。

さらに使用する状況によって以下の制限が加わります。これらは、型付けの時にチェックされます。

* 型の名前は大文字`A-Z`か、アンダースコア`_`で始まる。
* [名前](dictionary.md-define-name)では、先頭にドル記号は使えません。(ドル記号はほとんどの場合、[マクロの実体化](macro-reification)に使われます)


<a id="dictionary.md-define-static-target" class="anch"></a>

##### 静的ターゲット
静的ターゲットでは、その言語自体が基本型が`null`を許容しないような型システムを持っています。この性質はFlash、C++、Java、C#ターゲットに当てはまります。