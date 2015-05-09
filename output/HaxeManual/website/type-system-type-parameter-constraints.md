## 3.2.1 制約

型パラメータは複数の型で制約を与えることができます。

```haxe
typedef Measurable = {
  public var length(default, null):Int;
}

class Constraints {
  static public function main() {
    trace(test([]));
    trace(test(["bar", "foo"]));
    // String should be Iterable<String>
    //test("foo");
  }

  static function test<T:(Iterable<String>, Measurable)>(a:T) {
    if (a.length == 0) return "empty";
    return a.iterator().next();
  }
}
```

`test`メソッドの型パラメータ`T`は、`Iterable<String>`と`Measurable`の型に制約されます。`Measurable`の方は、便宜上[typedef](type-system-typedef.md)を使って、`Int`型の読み込み専用[プロパティ](class-field-property.md)`length`を要求しています。つまり、以下の条件を満たせば、これらの制約と矛盾しません。

<<<<<<< HEAD:md/manual/type-system-type-parameter-constraints.md
* `Iterable<String>`である
* かつ、`Int`型の`length`を持つ

7行目では空の配列で、8行目では`Array<String>`で`test`関数を呼び出すことができることを確認しました。しかし、10行目の`String`の引数では制約チェックで失敗しています。これは、`String`は`Iterable<T>`と矛盾するからです。
=======
We can see that invoking `test` with an empty array in line 7 and an `Array<String>` in line 8 works fine. This is because `Array` has both a `length`-property and an `iterator`-method. However, passing a `String` as argument in line 9 fails the constraint check because `String` is not compatible with `Iterable<T>`.
>>>>>>> english/master:output/HaxeManual/website/type-system-type-parameter-constraints.md

---

Previous section: [型パラメータ](type-system-type-parameters.md)

Next section: [ジェネリック](type-system-generic.md)
