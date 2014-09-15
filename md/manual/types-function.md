## 2.6 関数型

関数型に、[monomorph](types-monomorph.md)と共に、Haxeのユーザーからよく隠れている型の1つです。コンパイル時に式の型を出力させる`$type`という特殊な識別子を使えば、この型を以下のように浮かび上がらせることが可能です。

```haxe
class FunctionType {
  static public function main() {
    // i : Int -> s : String -> Bool
    $type(test);
    $type(test(1, "foo")); // Bool
  }

  static function test(i:Int, s:String):Bool {
    return true;
  }
}
```

初めの`$type`の出力は、test関数の定義と強い類似性があります。では、その相違点を見てみます。

* **関数の引数**では、カンマではなく`->`で区切られる。
* **引数の戻り値の型**は、もう一つ`->`を付けた後に書かれる。

どちらの表記でも、`test`関数が1つ目の引数として`Int`を受け取り、2つ目の引数として`String型`を受け取り、Bool型の値を返すことはよくわかります。2つ目の`$type`式の`test(1, "foo")`のようにこの関数を呼び出すと、Haxeの型検査は`1`が`Int`に代入可能か、`"foo"`が`String`に代入可能かをチェックします。そして、その呼び出し後の型は、`test`の戻り値の型の`Bool`となります。

もし、ある関数の型が、別の関数の型を引数か戻り値に含む場合、丸かっこをグループ化に使うことができます。例えば、`Int -> (Int -> Void) -> Void`は初めの引数の型が`Int`、2番目の引数が`Int -> Void`で、戻り値が`Void`の関数を表します。

---

Previous section: [パフォーマンスへの影響](types-structure-performance.md)

Next section: [オプション引数](types-function-optional-arguments.md)