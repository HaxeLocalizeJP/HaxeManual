## 3.1.1 拡張

拡張は、構造体が与えられた型のフィールドすべてと、加えていくつかのフィールドを持っていることを表すために使われます。

```haxe
typedef IterableWithLength<T> = {
  > Iterable<T>,
  // 読み込み専用プロパティ
  var length(default, null):Int;
}

class Main {
  static public function main() {
    var array = [1, 2, 3];
    var t:IterableWithLength<Int> = array;
  }
}
```
大なりの演算子を使うことで、追加のクラスフィールドを持つ`Iterable<T>`の拡張が作成されました。このケースでは、読み込み専用の[プロパティ](class-field-property.md) である`Int`型の`length`が要求されます。 

`IterableWithLength<T>`に適合するためには、`Iterable<T>`にも適合してさらに読み込み専用の`Int`型のプロパティ`length`が必要です。例では、Arrayが割り当てられており、これはこれらの条件をすべて満たしています。

##### since Haxe 3.1.0

複数の構造体を拡張することもできます。

```haxe
typedef WithLength = {
  var length(default, null):Int;
}

typedef IterableWithLengthAndPush<T> = {
  > Iterable<T>,
  > WithLength,
  function push(a:T):Int;
}

class Main {
  static public function main() {
    var array = [1, 2, 3];
    var t:IterableWithLengthAndPush<Int> = array;
  }
}
```

---

Previous section: [typedef](type-system-typedef.md)

Next section: [型パラメータ](type-system-type-parameters.md)