## 2.6.2 デフォルト値

Haxeでは、引数のデフォルト値として定数値を割り当てることが可能です。

```haxe
class DefaultValues {
  static public function main() {
    // ?i : Int -> ?s : String -> String
    $type(test);
    trace(test()); // i: 12, s: bar
    trace(test(1)); // i: 1, s: bar
    trace(test(1, "foo")); // i: 1, s: foo
    trace(test("foo")); // i: 12, s: foo
  }

  static function test(i = 12, s = "bar") {
    return "i: " +i + ", s: " +s;
  }
}
```
この例は、[オプション引数](types-function-optional-arguments.md)のものとよく似ています。違いは、関数の引数の`i`と`s`それぞれに`12`と`"bar"`を代入していることだけです。これにより、引数が省略された場合に`null`ではなく、このデフォルト値が使われるようになります。

Haxeでのデフォルト値は、型の一部では無いので、出力時に呼び出し元で置き換えられるわけではありません(ただし、特有の動作を行う[インライン](class-field-inline.md)の関数を除く)。いくつかのターゲットでは、無視された引数に対してやはり`null`を渡して、以下の関数と同じようなコードを生成します。

```haxe
	static function test(i = 12, s = "bar") {
		if (i == null) i = 12;
		if (s == null) s = "bar";
		return "i: " +i + ", s: " +s;
	}
```
つまり、パフォーマンスが要求されるコードでは、デフォルト値を使わない書き方をすることが重要だと考えてください。

---

Previous section: [オプション引数](types-function-optional-arguments.md)

Next section: [ダイナミック](types-dynamic.md)