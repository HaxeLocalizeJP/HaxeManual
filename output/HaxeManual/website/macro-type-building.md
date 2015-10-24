## 9.5 型ビルド

型ビルドのマクロはいくつかの点で式マクロとは使い方が違います。

* 式は返しません。その代わりクラスフィールドの配列を返します。戻り値の型は明示的に`Array<haxe.macro.Expr.Field>`を指定しないといけません。
* [コンテクスト](macro-context.md)にローカルメソッドとローカル変数が含まれません。
* コンテクストにビルドフィールドが含まれ、`haxe.macro.Context.getBuildFields()`で使用可能です。
* 直接呼び出すのではなく、[class](types-class-instance.md)または[enum](types-enum-instance.md)の宣言に対する`@:build`または`@:autoBuild`[メタデータ](lf-metadata.md)の引数として指定します。

以下の例で型ビルドを実演しています。モジュールが`macro`関数を含むとそのモジュールがマクロコンテクストで型付けされてしまうため、2つのファイルに分割していることに気を付けてください。ビルドされる型はビルドマクロが走る前は不完全な状態でしか読み込みがされないので、このことがよく問題になります。型ビルドのマクロは常にそれ用のモジュールに分けて定義することをオススメします。

```haxe
import haxe.macro.Context;
import haxe.macro.Expr;

class TypeBuildingMacro {
  macro static public function build(fieldName:String):Array<Field> {
    var fields = Context.getBuildFields();
    var newField = {
      name: fieldName,
      doc: null,
      meta: [],
      access: [AStatic, APublic],
      kind: FVar(macro : String, macro "my default"),
      pos: Context.currentPos()
    };
    fields.push(newField);
    return fields;
  }
}
```
```haxe
@:build(TypeBuildingMacro.build("myFunc"))
class Main {
  static public function main() {
    trace(Main.myFunc); // my default
  }
}
```

`TypeBuildingMacro`の`build`メソッドは次の3つのステップを経て動作します。

1. `Context.getBuildFields()`を使ってビルドフィールドを取得する。
2. `funcName`マクロ引数をフィールド名として使って、新しい`haxe.macro.expr.Field`を宣言する。このフィールドは`String`[変数](class-field-variable.md)でデフォルト値は`"my default"`（`kind`フィールドより）で`public static`です（`access`フィールドより）。
3. 新しいフィールドをビルドフィールドに追加してそれを返す。

このマクロは`Main`クラスに対する`@:build`メタデータの引数です。この型が必要になるとコンパイラは以下を行います。

1. クラスフィールドも含めて、このモジュールを構文解析する。
2. [インターフェース](types-interfaces.md)や[継承](types-class-inheritance.md)などの他の型との関係も含めて、型の設定をする。
3. `@:build`メタデータに従って、型ビルドのマクロを実行する。
4. 型ビルドの返したフィールドに従って、クラスの型付けを通常通り続行する。

こうして型ビルドマクロによって思いのままにクラスのフィールドを追加したり、編集したりができます。上の例では、マクロは`"myFunc"`の引数で呼び出されて、`Main.myFunc`を正当なフィールドアクセスにしています。

型ビルドのマクロで何も編集したくない場合、マクロで`null`を返してもかまいません。これでコンパイラに何の変更もしないことが伝わります。`Context.getBuildFields()`を返すよりも好ましいです。

---

Previous section: [Tools](macro-tools.md)

Next section: [列挙型ビルド](macro-enum-building.md)