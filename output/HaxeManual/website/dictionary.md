<a id="define-dollar-type" class="anch"></a>

##### `$type`
`$type` is a compile-time mechanism being called like a function, with a single argument. The compiler evaluates the argument expression and then outputs the type of that expression.

<a id="define-class-t" class="anch"></a>

##### `Class<T>`

この型はすべてのクラスの型と一致します。つまり、すべてのクラス(インスタンスではなくクラス)をこれに代入することができます。コンパイル時に、`Class<T>`は全てのクラスの型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。

この型は、任意のクラスを要求するようなAPIで役立ちます。例えば、[HaxeリフレクションAPI](std-reflection.md)のいくつかのメソッドがこれに当てはまります。


<a id="define-enum-t" class="anch"></a>

##### `Enum<T>`
すべての列挙型と一致する型です。コンパイル時に、`Enum<T>`は全ての列挙型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。

<a id="define-null-t" class="anch"></a>

##### `Null<T>`
静的ターゲットでは、`Null<Int>`、`Null<Float>`、`Null<Bool>`の型で`null`を許容することが可能になります。動的ターゲットでは`Null<T>`に効果はありません。また、`Null<T>`はその型が`null`を持つことを表すドキュメントとしても使うことができます。

<a id="define-ast" class="anch"></a>

##### Abstract Syntax Tree (AST)
The AST is the result of **parsing** Haxe code into a typed structure. This structure is exposed to macros through the types defined in the file `haxe/macro/Expr.hx` of the Haxe Standard Library.

<a id="define-accessor-method" class="anch"></a>

##### Accessor method
An **accessor method** (or short **accessor**) for a field named `field` of type `T` is a **getter** named `get_field` of type `Void->T` or a **setter** named `set_field` of type `T->T`.

<a id="define-bool" class="anch"></a>

##### Bool
真(**true**)または、偽(**false**)のどちらかになる値を表す。

<a id="define-class-field" class="anch"></a>

##### Class Field
A class field is a variable, property or method of a class which can either be static or non-static. Non-static fields are referred to as **member** fields, so we speak of e.g. a **static method** or a **member variable**.

<a id="define-compiler-flag" class="anch"></a>

##### Compiler Flag
A compiler flag is a configurable value which may influence the compilation process. Such a flag can be set by invoking the command line with `-D key=value` or just `-D key`, in which case the value defaults to `"1"`. The compiler also sets several flags internally to pass information between different compilation steps.

<<<<<<< HEAD:md/manual/dictionary.md
<a name="define-enumvalue" class="anch"></a>
=======
<a id="define-compound-type" class="anch"></a>

##### Compound Type
A compound type is a type which has sub-types. This includes any type with [type parameters](type-system-type-parameters.md) and the [function](types-function.md) type.

<a id="define-contravariance" class="anch"></a>

##### Contravariance
A [compound type](dictionary.md#define-compound-type) is considered contravariant if its component types can be assigned to less generic components, i.e. if they are only written, but never read.

<a id="define-covariance" class="anch"></a>

##### Covariance
A [compound type](dictionary.md#define-compound-type) is considered covariant if its component types can be assigned to less specific components, i.e. if they are only read, but never written.

<a id="define-default-value" class="anch"></a>

##### Default values

Basic types have the following default values on static targets:

* `Int`: `0`
* `Float`: `NaN` on Flash, `0.0` on other static targets
* `Bool`: `false`



<a id="define-definition" class="anch"></a>

##### Definition name
Definition description

<a id="define-dynamic-target" class="anch"></a>

##### Dynamic target
Dynamic targets are more lenient with their types and allow `null` values for basic types. This applies to the JavaScript, PHP, Neko and Flash 6-8 targets.

<a id="define-enumvalue" class="anch"></a>
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

##### EnumValue
EnumValueはすべての列挙型のインスタンスと一致する特別な型です。この型はHaxeの標準ライブラリでは、すべての列挙型に対して可能な操作を提供するのに使われます。またユーザーのコードでは、特定の列挙型ではなく任意の列挙型のインスタンスを要求するAPIで利用できます。

<a id="define-expected-type" class="anch"></a>

##### Expected Type
Expected types occur when the type of an expression is known before that expression has been typed, e.g. because the expression is argument to a function call. They can influence typing of that expression through what is called [top-down inference](type-system-top-down-inference.md).

<a id="define-float" class="anch"></a>

##### Float
<<<<<<< HEAD:md/manual/dictionary.md
IEEEの64bit倍精度浮動小数点数を表します。
=======
Represents a double-precision IEEE 64-bit floating point number.

<a id="define-generic-type-parameter" class="anch"></a>

##### Generic Type Parameter
A type parameter is said to be generic if its containing class or method is generic.
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

<a id="define-identifier" class="anch"></a>

##### Identifier
Haxe identifiers start with an underscore `_`, a dollar `$`, a lower-case character `a-z` or an upper-case character `A-Z`. After that, any combination and number of `_`, `A-Z`, `a-z` and `0-9` may follow.

Further limitations follow from the usage context, which are checked upon typing:

* Type names must start with an upper-case letter `A-Z` or an underscore `_`.
* Leading dollars are not allowed for any kind of [name](dictionary.md#define-name) (dollar-names are mostly used for [macro reification](macro-reification.md)).


<a id="define-int" class="anch"></a>

##### Int
整数を表します。

<a id="define-lambda" class="anch"></a>

##### Lambda
Lambda is a functional language concept within Haxe that allows you to apply a function to a list or [iterators](lf-iterators.md). The Lambda class is a collection of functional methods in order to use functional-style programming with Haxe.

<a id="define-macro-context" class="anch"></a>

##### Macro Context
The macro context is the environment in which the macro is executed. Depending on the macro type, it can be considered to be a class being built or a function being typed. Contextual information can be obtained through the `haxe.macro.Context` API.

<a id="define-module" class="anch"></a>

##### Module
All Haxe code is organized in modules, which are addressed using paths. In essence, each .hx file represents a module which may contain several types. A type may be `private`, in which case only its containing module can access it.

<a id="define-name" class="anch"></a>

##### Name
A general name may refer to

* a type,
* a local variable,
* a local function or
* a field.


<a id="define-nullable" class="anch"></a>

##### Nullable
Haxeでは、ある型が値として`null`をとる場合に**Nullable**(null許容型)であるとみなす。

<a id="define-physical-field" class="anch"></a>

##### Physical field
A field is considered to be **physical** if it is either

* a [variable](class-field-variable.md)
* a [property](class-field-property.md) with the read-access or write-access identifier being `default` or `null`
* a [property](class-field-property.md) with `:isVar` [metadata](lf-metadata.md)



<a id="define-private-type" class="anch"></a>

##### Private type
A type can be made private by using the `private` modifier. As a result, the type can only be directly accessed from within the [module](dictionary.md#define-module) it is defined in.

Private types, unlike public ones, do not become a member of their containing package.

<a id="define-read-access" class="anch"></a>

##### Read Access
A read access to a field occurs when a right-hand side [field access expression](expression-field-access.md) is used. This includes calls in the form of `obj.field()`, where `field` is accessed to be read.

<a id="define-static-extension" class="anch"></a>

##### Static Extension
A static extension allows pseudo-extending existing types without modifying their source. In Haxe this is achieved by declaring a static method with a first argument of the extending type and then bringing the defining class into context through `using`.

<<<<<<< HEAD:md/manual/dictionary.md
<a name="define-string" class="anch"></a>
=======
<a id="define-static-target" class="anch"></a>

##### Static target
Static targets employ their own type system where `null` is not a valid value for basic types. This is true for the Flash, C++, Java and C# targets.

<a id="define-string" class="anch"></a>
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

##### String
A String is a sequence of characters.

<<<<<<< HEAD:md/manual/dictionary.md
<a name="define-type-path" class="anch"></a>
=======
<a id="define-structural-subtyping" class="anch"></a>

##### Structural Subtyping
Structural subtyping defines an implicit relation between types that have the same structure.

<a id="define-type-path" class="anch"></a>
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

##### Type path
The (dot-)path to a type consists of the package, the module name and the type name. Its general form is `pack1.pack2.packN.ModuleName.TypeName`.

<<<<<<< HEAD:md/manual/dictionary.md
<a name="define-void" class="anch"></a>
=======
<a id="define-underlying-type" class="anch"></a>
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

##### Void
Voidは型が存在しないことを表します。特定の場面(主に関数)で値を持たないことを表現するのに使います。

<a name="define-write-access" class="anch"></a>

##### Write Access
A write access to a field occurs when a [field access expression](expression-field-access.md) is assigned a value in the form of `obj.field = value`. It may also occur in combination with [read access](dictionary.md#define-read-access) for special assignment operators such as `+=` in expressions like `obj.field += value`.

<a name="define-generic-type-parameter" class="anch"></a>

##### ジェネリック型パラメータ
型パラメータを持っているクラスまたはメソッドがジェネリックであるとき、その型パラメータもジェネリックであるという。

<a name="define-default-value" class="anch"></a>

##### デフォルト値

  基本型は、静的ターゲットではデフォルト値は以下になります。
  
* `Int`: `0`。
* `Float`: Flashでは`NaN`。その他の静的ターゲットでは`0.0`。
* `Bool`: `false`。



<a name="define-covariance" class="anch"></a>

##### 共変性
[複合型](dictionary.md#define-compound-type)がそれを構成する型よりも一般な型で構成される複合型に代入できる場合に、共変であるという。 つまり、読み込みのみが許されて書き込みができない場合です。

<a name="define-dynamic-target" class="anch"></a>

##### 動的ターゲット
動的ターゲットは型に関して寛容で、基本型が`null`を許容します。これはJavaScriptとPHP、Neko、Flash 6-8ターゲットが当てはまります。

<a id="define-unification" class="anch"></a>

##### 単一化
型Aの型Bでの単一化というのは、AがBに代入可能かを調べる指向性を持つプロセスです。型が[単相](types-monomorph.md)の場合または単相を含む場合は、それを変化させることができます。

<<<<<<< HEAD:md/manual/dictionary.md
<a name="define-contravariance" class="anch"></a>
=======
<a id="define-void" class="anch"></a>
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

##### 反変性
[複合型](dictionary.md#define-compound-type)がそれを構成する型よりも特殊な型で構成される複合型に代入できる場合に、反変であるという。 つまり、書き込みのみが許されて読み込みができない場合です。

<<<<<<< HEAD:md/manual/dictionary.md
<a name="define-underlying-type" class="anch"></a>
=======
<a id="define-write-access" class="anch"></a>
>>>>>>> english/master:output/HaxeManual/website/dictionary.md

##### 基底型

抽象型の基底型は、実行時にその抽象型を表すために使われる型です。基底型はたいていの場合は具体型ですが、別の抽象型である場合もあります。


<a name="define-definition" class="anch"></a>

##### 定義の名前
定義の説明

<a name="define-structural-subtyping" class="anch"></a>

##### 構造的部分型付け
構造的部分型付けは、同じ構造を持つ型の暗黙の関係を示します。

<a name="define-compound-type" class="anch"></a>

##### 複合型(Compound Type)

複合型というのは、従属する型を持つ型です。[型パラメータ](type-system-type-parameters.md)を持つ型や、[関数](types-function.md)型がこれに当たります。


<a name="define-static-target" class="anch"></a>

##### 静的ターゲット
静的ターゲットでは、その言語自体が基本型が`null`を許容しないような型システムを持っています。この性質はFlash、C++、Java、C#ターゲットに当てはまります。
