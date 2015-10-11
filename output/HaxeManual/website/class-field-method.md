## 4.3 メソッド

[変数](class-field-variable.md)がデータを保持する一方で、メソッドは[式](expression.md)をもってプログラムの動作を定義します。このマニュアルのさまざまなサンプルコード中で、メソッドフィールドを見てきました。最初の[Hello World](introduction-hello-world.md)の例ですら、`main`メソッドとして現れています。

```haxe
class Main {
  static public function main():Void {
    trace("Hello World");
  }
}
```

メソッドは`function`キーワードから始まることで識別されます。そして以下の要素を持ちます。

1. 名前を持つ(ここでは`main`)。
2. 引数のリストを持つ(ここでは空の`()`)。
3. 戻り値を持つ(ここでは`Void`)。
4. [アクセス修飾子](class-field-access-modifier.md)を持つ場合がある(ここでは`static`と`public`)
5. 式を持つ場合がある(ここでは`{trace("Hello World");}`)。

引数と戻り値の型について学ぶために次の例を見てみましょう。

```haxe
class Main {
  static public function main() {
    myFunc("foo", 1);
  }

  static function myFunc(f:String, i) {
    return true;
  }
}
```

引数はフィールド名の後に、小かっこ(`(`)を続け、引数の詳細のリストをカンマ(`,`)区切りで並べて、小かっこを閉じる(`)`)ことで記述します。引数の詳細についての情報は[関数](types-function.md)で説明されています。

この例からは[型推論](type-system-type-inference.md)が引数と戻り値についてどのように動作するのかもわかります。`myFunc`は2つの引数を持ちますが、最初の引数の`f`のみで`String`の型が明示されていて、2つ目の引数の`i`には型注釈がありません。コンパイラがこのメソッドの呼び出しから推論を行うように残してあります。同じように、メソッドの戻り値の型も`return true`から推論されて`Bool`になります。

---

Previous section: [ゲッターとセッターのルール](class-field-property-rules.md)

Next section: [メソッドのオーバーライド(override)](class-field-overriding.md)