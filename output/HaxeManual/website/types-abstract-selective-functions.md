## 2.8.4 選択的関数

コンパイラは抽象型のメンバ関数を静的な(static)関数へと変化させるので、手で静的な関数を記述してそれを抽象型のインスタンスで使うことができます。この意味は、関数の最初の引数の型で、その関数が使えるようになる[静的拡張](lf-static-extension.md)に似ています。

```haxe
abstract MyAbstract<T>(T) from T {
  public function new(t:T) this = t;

  function get() return this;

  static public function getString(v:MyAbstract<String>):String {
    return v.get();
  }
}

class SelectiveFunction {
  static public function main() {
    var a = new MyAbstract("foo");
    a.getString();
    var b = new MyAbstract(1);
    // Int should be MyAbstract<String>
    b.getString();
  }
}
```

抽象型の`MyAbstract`の`getString`のメソッドは、最初の引数として`MyAbstract<String>`を受け取ります。これにより、14行目の変数`a`の関数呼び出しが可能になります(`a`の型が`MyAbstract<String>`なので)。しかし、`MyAbstract<Int>`の変数`b`では使えません。

> ##### Trivia: 偶然の機能
>
> 
> 実際のところ選択的関数は意図して作られたというよりも、発見された機能です。この機能について初めて言及されてから実際に動作せせるまでに必要だったのは軽微な修正のみでした。この発見が、Mapのような複数の型の抽象型にもつながっています。

---

Previous section: [配列アクセス](types-abstract-array-access.md)

Next section: [抽象型列挙体](types-abstract-enum.md)