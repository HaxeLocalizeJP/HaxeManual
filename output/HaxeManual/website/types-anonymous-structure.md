## 2.5 匿名の構造体

匿名の構造体は、型を明示せずに利用できるデータの集まりです。以下の例では、`x`と`name`の2つのフィールドを持つ構造体を生成して、それぞれを`12`と`"foo"`の値で初期化しています。

```haxe
class Main {
  static public function main() {
    var myStructure = { x: 12, name: "foo"};
  }
}
```

構文のルールは以下の通りです :

1. 構造体は中カッコ `{}` で囲う。
2. **カンマで区切られた** キーと値のペアのリストを持つ。
3. [識別子](dictionary.md#define-identifier)の条件を満たすカギと、値が**コロン**で区切られる。
4. 値には、Haxeのあらゆる式が当てはまる。

ルール4は複雑にネストした構造体を含みます。例えば、以下のような。

```haxe
var user = {
  name : "Nicolas",
  age : 32,
  pos : [
    { x : 0, y : 0 },
    { x : 1, y : -1 }
  ],
};
```
構造体のフィールドは、クラスと同じように、**ドット**(`.`)を使ってアクセスします。

```haxe
// get value of name, which is "Nicolas"
user.name;
// set value of age to 33
user.age = 33;
```
特筆すべきは、匿名の構造体の使用は型システムを崩壊させないことです。コンパイラは実際に利用可能なフィールドにしかアクセスを許しません。つまり、以下のようなコードはコンパイルできません。

```haxe
class Test {
  static public function main() {
    var point = { x: 0.0, y: 12.0 };
    // { y : Float, x : Float } has no field z
    point.z;
  }
}
```
このエラーメッセージはコンパイラが`point`の型を知っていることを表します。この`point`の型は、`x`と`y`の`Float`型のフィールドを持つ構造体であり、`z`というフィールドは持たないのでアクセスに失敗しました。
この`point`の型は[型推論](type-system-type-inference.md)により識別され、そのおかげでローカル変数では型を明示しなくて済みます。ただし、`point`が、クラスやインスタンスのフィールドだった場合、以下のように型の明示が必要になります。

```haxe
class Path {
    var start : { x : Int, y : Int };
    var target : { x : Int, y : Int };
    var current : { x : Int, y : Int };
}
```

このような冗長な型の宣言をさけるため、特にもっと複雑な構造体の場合、以下のように[typedef](type-system-typedef.md)を使うことをお勧めします。

```haxe
typedef Point = { x : Int, y : Int }

class Path {
    var start : Point;
    var target : Point;
    var current : Point;
}
```

---

Previous section: [列挙型を使う](types-enum-using.md)

Next section: [JSONで構造体を書く](types-structure-json.md)
