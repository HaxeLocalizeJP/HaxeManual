## 5.11 ローカル関数

Haxeはファーストクラス関数をサポートしており、式の中でローカル関数を宣言することができます。この構文は[クラスフィールドメソッド](class-field-method.md)にならいます。

```haxe
class Main {
  static public function main() {
    var value = 1;
    function myLocalFunction(i) {
      return value + i;
    }
    trace(myLocalFunction(2)); // 3
  }
}
```

`myLocalFunction`を、`main`クラスフィールドの[ブロック式](expression-block.md)の中で宣言しました。このローカル関数は1つの引数`i`を取り、それをスコープの外のvalueに足しています。

スコープについては[変数の場合](expression-var.md)と同じで、多くの面で名前を持つローカル関数はローカル変数に対する匿名関数の代入と同じです。

```haxe
var myLocalFunction = function(a) { }
```

しかしながら、関数の場所による型パラメータに関する違いがあります。これは定義時に何にも代入されていない「左辺値」の関数と、それ以外の「右辺値」の関数についての違いで、以下の通りです。

* 左辺値の関数は名前が必要で、[型パラメータ](type-system-type-parameters.md)を持ちます。
* 右辺値の関数については名前はあってもなくてもかまいませんが、型パラメータを使うことができません。

---

Previous section: [var(変数宣言)](expression-var.md)

Next section: [new(インスタンス化)](expression-new.md)