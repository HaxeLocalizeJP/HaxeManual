## 6.7 イテレータ(反復子)

Haxeでは、カスタムのイテレータや反復可能(iterable)なデータ型を簡単に定義できます。これらの概念は`Iterator<T>`型と`Iterable<T>`型を使って以下のように表現されています。

```haxe
typedef Iterator<T> = {
	function hasNext() : Bool;
	function next() : T;
}

typedef Iterable<T> = {
	function iterator() : Iterator<T>;
}
```

これらの型のいずれかで[構造的に単一化できる](type-system-structural-subtyping.md)あらゆる[class](types-class-instance.md)は、[forループ](expression-for.md)で反復処理を行うことができます。つまり、型が合うように`hasNext`と`next`メソッドを定義すればそのクラスはイテレータであるし、`Iterator<T>`を返す`iterator`メソッドを定義すれば反復可能な型です。

```haxe
class MyStringIterator {
  var s:String;
  var i:Int;

  public function new(s:String) {
    this.s = s;
    i = 0;
  }

  public function hasNext() {
    return i < s.length;
  }

  public function next() {
    return s.charAt(i++);
  }
}

class Main {
  static public function main() {
    var myIt = new MyStringIterator("string");
    for (chr in myIt) {
      trace(chr);
    }
  }
}
```

この例での`MyStringIterator`は`Bool`型を返す`hasNext`と`String`型を返す`next`メソッドを定義しているので、イテレータであると見なされます。また`next`の戻り値の型から、これは`Iterator<String>`です。`main`メソッドでこれをインスタンス化して反復処理を行っています。

```haxe
class MyArrayWrap<T> {
  var a:Array<T>;
  public function new(a:Array<T>) {
    this.a = a;
  }

  public function iterator() {
    return a.iterator();
  }
}

class Main {
  static public function main() {
    var myWrap = new MyArrayWrap([1, 2, 3]);
    for (elt in myWrap) {
      trace(elt);
    }
  }
}
```

こちらは1つ前の例とは異なり自前の`Iterator`を準備していませんが、代わりに`MyArrayWrap<T>`は`Array<T>`の`iterator`関数を効果的に利用しています。

---

Previous section: [配列内包表記](lf-array-comprehension.md)

Next section: [関数の束縛(bind)](lf-function-bindings.md)