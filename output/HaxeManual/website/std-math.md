## 10.4 Math

<<<<<<< HEAD:md/manual/std-math.md
Haxe includes a floating point math library for some common mathematical operations.  Most of the fuctions operate on and return `floats`.  However, an `Int` can be used where a `Float` is expected, and Haxe also converts `Int` to `Float` during most numeric operations  (see [数値の演算子](types-numeric-operators.md) for more details).
=======
Haxe includes a floating point math library for some common mathematical operations. Most of the functions operate on and return `floats`. However, an `Int` can be used where a `Float` is expected, and Haxe also converts `Int` to `Float` during most numeric operations  (see [Numeric Operators](types-numeric-operators.md) for more details).
>>>>>>> english/master:output/HaxeManual/website/std-math.md

Here are some example uses of the math library.  See the [Math API](http://api.haxe.org/Math.html) for all available functions.

```haxe
class MathExample {
  static public function main() {
    var x = 1/2;
    var y = 20.2;
    var z = -2;

    trace(Math.abs(z)); //2
    trace(Math.sin(x*Math.PI)); //1
    trace(Math.ceil(y)); //21

    // log is the natural logarithm
    trace(Math.log(Math.exp(5))); //5

    // Output for neko target, may vary
    // depending on platform
    trace(1/0); //inf
    trace(-1/0); //-inf
    trace(Math.sqrt(-1)); //nan
  }
}


```

---

Previous section: [Implementation Details](std-regex-implementation-details.md)

Next section: [Special Numbers](std-math-special-numbers.md)