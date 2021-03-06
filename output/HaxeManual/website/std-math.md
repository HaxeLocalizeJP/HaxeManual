## 10.4 Math

Haxe includes a floating point math library for some common mathematical operations. Most of the functions operate on and return `floats`. However, an `Int` can be used where a `Float` is expected, and Haxe also converts `Int` to `Float` during most numeric operations  (see [数値の演算子](types-numeric-operators.md) for more details).

Here are some example uses of the math library:  

```haxe
class Main {
  static public function main() {
    var x = 1/2;
    var y = 20.2;
    var z = -2;

    trace(Math.abs(z)); //2
    trace(Math.sin(x*Math.PI)); //1
    trace(Math.ceil(y)); //21

    // logは自然対数。
    trace(Math.log(Math.exp(5))); //5

    // nekoターゲットの場合の出力。
    // 以下の出力はプラットフォームによって変わりえる。
    trace(1/0); //inf
    trace(-1/0); //-inf
    trace(Math.sqrt(-1)); //nan
  }
}


```

See the [Math API](http://api.haxe.org/Math.html) for all available functions.

---

Previous section: [Implementation Details](std-regex-implementation-details.md)

Next section: [Special Numbers](std-math-special-numbers.md)