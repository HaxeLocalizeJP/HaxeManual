## 2.6.1 オプション引数

オプション引数は、引数の識別子の直前にクエスチョンマーク(`?`)を付けることで表現できます。

```haxe
class Main {
  static public function main() {
    // ?i : Int -> ?s : String -> String
    $type(test);
    trace(test()); // i: null, s: null
    trace(test(1)); // i: 1, s: null
    trace(test(1, "foo")); // i: 1, s: foo
    trace(test("foo")); // i: null, s: foo
  }

  static function test(?i:Int, ?s:String) {
    return "i: " +i + ", s: " +s;
  }
}
```

`test`関数は、2つのオプション引数を持ちます。`Int`型の`i`と`String`型の`s`です。これは3行目の関数型の出力に直接反映されています。

この例では、関数を4回呼び出しその結果を出力しています。

1. 初めの呼び出しは引数無し。
2. 2番目の呼び出しは`1`のみの引数。
3. 3番目の呼び出しは`1`と`"foo"`の2つの引数。
4. 4番目の呼び出しは`"foo"`のみの引数。

この出力を見ると、オプション引数が呼び出し時に省略されると`null`になることがわかります。つまり、これらの引数は`null`が入る型でなくてはいけないことになり、ここで[null許容](types-nullability.md)に関する疑問が浮かび上がります。Haxeのコンパイラは[静的ターゲット](dictionary.md#define-static-target)に出力する場合に、オプションの基本型の引数の型を`Null<T>`であると推論することで、オプション引数の型がnull許容であることを保証してます。

初めの3つの呼び出しは直観的なものですが、4つ目の呼び出しには驚くかもしれません。後の引数に代入可能な値が渡されたため、オプション引数はスキップされています。

---

Previous section: [関数](types-function.md)

Next section: [デフォルト値](types-function-default-values.md)
