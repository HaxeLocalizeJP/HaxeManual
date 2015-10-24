## 6.9 メタデータ

以下の要素はメタデータで属性をつけることができます。

* `class`、`enum`の定義
* クラスフィールド
* 列挙型コンストラクタ
* 式

これらのメタデータの情報は`haxe.rtti.Meta`のAPIを使って実行時に利用することが可能です。

```haxe
import haxe.rtti.Meta;

@author("Nicolas")
@debug
class MyClass {
  @range(1, 8)
  var value:Int;

  @broken
  @:noCompletion
  static function method() { }
}

class Main {
  static public function main() {
    // { author : ["Nicolas"], debug : null }
    trace(Meta.getType(MyClass));
    // [1,8]
    trace(Meta.getFields(MyClass).value.range);
    // { broken: null }
    trace(Meta.getStatics(MyClass).method);
  }
}
```

メタデータは`@`の文字で始まり、メタデータの名前が続き、その後にオプションでカンマで区切った定数値の引数が小かっこで囲まれている、ということで簡単に識別できます。

* `MyClass`クラスは`"Nicolas"`という文字列の引数1つを持つ`author`メタデータと、引数を持たない`debug`メタデータを持ちます。
* メンバ変数`value`は`1`と`8`の2つの整数の引数を持つ`range`メタデータを持ちます。
* 静的メソッド`method`は引数なしの`broken`メタデータと、引数なしの`:noCompletion`メタデータを持ちます。

`main`メソッドでは、APIを通してこれらのメタデータへアクセスしています。この出力からは取得可能なデータの構造が分かります。

* 各メタデータについてフィールドがあり、フィールドの名前はメタデータの名前です。
* フィールドの値はメタデータの引数に一致します。引数がない場合、フィールドの値は`null`です。その他の場合、フィールドの値は引数1つが要素1つになった配列です。
* `:`から始まるメタデータは省略されます。このメタデータは**コンパイラメタデータ**として知られます。

メタデータの引数の値は以下が使用できます。

* [定数値](expression-constants.md)
* [配列の宣言](expression-array-declaration.md) (すべての要素がこのリストのいずれか)
* [オブジェクトの宣言](expression-object-declaration.md) (すべての要素がこのリストのいずれか)

##### ビルトインのコンパイラメタデータ
コマンドラインから`haxe --help-metas`を実行することで、定義済みメタデータの完全なリストを得ることができます。

詳しくは[コンパイラメタデータのリスト](cr-metadata.md)を見てください。

---

Previous section: [関数の束縛（bind）](lf-function-bindings.md)

Next section: [アクセス制御](lf-access-control.md)