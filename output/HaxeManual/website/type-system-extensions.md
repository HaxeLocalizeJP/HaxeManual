## 3.1.1 拡張

<<<<<<< HEAD:md/manual/type-system-extensions.md
拡張は、構造体が与えられた型のフィールドすべてと、加えていくつかのフィールドを持っていることを表すために使われます。
=======
Extensions are used to express that a structure has all the fields of a given type as well as some additional fields of its own:
>>>>>>> english/master:output/HaxeManual/website/type-system-extensions.md

```haxe
typedef IterableWithLength<T> = {
  > Iterable<T>,
  // read only property
  var length(default, null):Int;
}

class Extension {
  static public function main() {
    var array = [1, 2, 3];
    var t:IterableWithLength<Int> = array;
  }
}
```
大なりの演算子を使うことで、追加のクラスフィールドを持つ`Iterable<T>`の拡張が作成されました。このケースでは、読み込み専用の[プロパティ](class-field-property.md) である`Int`型の`length`が要求されます。 

`IterableWithLength<T>`に適合するためには、`Iterable<T>`にも適合してさらに読み込み専用の`Int`型のプロパティ`length`を持ってなきゃいけません。例では、Arrayが割り当てられており、これはこれらの条件をすべて満たしています。

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

class Extension2 {
  static public function main() {
    var array = [1, 2, 3];
    var t:IterableWithLengthAndPush<Int> = array;
  }
}
```

---

Previous section: [typedef](type-system-typedef.md)

Next section: [型パラメータ](type-system-type-parameters.md)