## 8.5.1 RTTIの構造

##### 一般的な型情報

* path: [型のパス](dictionary.md#define-type-path)。
* module: その型を含んでいる[モジュール](dictionary.md#define-module)のパス。
* file: その型を含む.hxのファイルのフルパス。例えば[マクロ](macro.md)から定義された場合など、そのようなファイルがない場合`null`になる場合がある。
* params: その型が持つ[型パラメータ](type-system-type-parameters.md)を表す文字列の配列。Haxe3.2.0では、[制約](type-system-type-parameter-constraints.md)についての情報を持ちません。
* doc: その型のドキュメント。この情報は`-D use_rtti_doc`の[コンパイラフラグ](dictionary.md#define-compiler-flag)を付けた場合のみ使用できます。フラグがないか、ドキュメントがない場合は`null`です。
* isPrivate: その型が[private](dictionary.md#define-private-type)かどうか。
* platforms: その型が利用可能なターゲットのリスト。
* meta: その型につけられているメタデータ。

##### クラスの型情報

* isExtern: クラスが[extern](lf-externs.md)かどうか。
* isInterface: [インターフェース](types-interfaces.md)かどうか。
* superClass: その親クラスの型のパスと型パラメータのリスト。
* interfaces: そのクラスのインターフェースの型のパスと型パラメータのリストのリスト。
* fields: [クラスフィールド情報](cr-rtti-structure.md#クラスフィールド情報)に記載されている、[クラスフィールド](class-field.md)のリスト
* statics: [クラスフィールド情報](cr-rtti-structure.md#クラスフィールド情報)に記載されている、静的クラスフィールドのリスト。
* tdynamic: そのクラスに[動的に実装](types-dynamic-implemented.md)された型、あるいは型が存在しない場合は`null`

##### 列挙型の型情報

* isExtern: その列挙型が[extern](lf-externs.md)かどうか。
* constructors: その列挙型コンストラクタのリスト。

##### 抽象型の型情報

* to: 定義されている[暗黙のtoキャスト](types-abstract-implicit-casts.md)の配列。
* from: 定義されている[暗黙のtoキャスト](types-abstract-implicit-casts.md)の配列。
* impl: 実装しているクラスの[クラスの型情報](cr-rtti-structure.md#クラスの型情報)。
* athis: その抽象型の[基底型](dictionary.md#define-underlying-type)。

##### クラスフィールド情報

* name: フィールドの名前。
* type: フィールドの型。
* isPublic: フィールドが[public](class-field-visibility.md)かどうか。
* isOverride: フィールドが別のフィールドの[オーバーライド](class-field-override.md)かどうか。
* doc: フィールドのドキュメント。この情報は`-D use_rtti_doc`の[コンパイラフラグ](dictionary.md#define-compiler-flag)を付けた場合のみ使用できます。フラグがないか、ドキュメントがない場合は`null`です。
* get: フィールドの[読み込みアクセスの挙動](dictionary.md#define-read-access)。
* set: フィールドの[書き込みアクセスの挙動](dictionary.md#define-write-access)。
* params: そのフィールドが持つ[型パラメータ](type-system-type-parameters.md)を表す文字列の配列。Haxe3.2.0では、[制約](type-system-type-parameter-constraints.md)についての情報を持ちません。
* platforms: フィールドが使用可能なターゲットのリスト。
* meta: フィールドに付けられているメタデータ。
* line: フィールドが定義されている行番号。この情報はフィールドが式を持つ場合のみ使用可能です。その他の場合は`null`です
* overloads: このフィールドに対する利用可能なオーバーロードのリスト。存在しなければ`null`です。

##### 列挙型コンストラクタ情報

* name: コンストラクタ名。
* args: 引数のリスト。存在しなければ`null`です。
* doc: コンストラクタのドキュメント。この情報は`-D use_rtti_doc`の[コンパイラフラグ](dictionary.md#define-compiler-flag)を付けた場合のみ使用できます。フラグがないか、ドキュメントがない場合は`null`です。
* platforms: コンストラクタが使用可能なターゲットのリスト。
* meta: コンストラクタに付けられているメタデータ。

---

Previous section: [実行時型情報（RTTI）](cr-rtti.md)

Next section: [Macros](macro.md)