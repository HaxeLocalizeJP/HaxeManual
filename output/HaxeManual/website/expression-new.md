## 5.12 new(インスタンス化)

`new`キーワードは[クラス](types-class-instance.md)と[抽象型](types-abstract.md)のインスタンス化を行います。`new`の後にはインスタンス化される[型のパス](dictionary.md#define-type-path)が続きます。場合によっては、`<>`で囲んでカンマ`,`で区切った、[型パラメータ](type-system-type-parameters.md)の記述がされます。その後に、小かっこ(`(`)、カンマ(`,`)区切りのコンストラクタの引数が続き、小かっこ閉(`)`)で閉じます。

```haxe
class Main<T> {
  static public function main() {
    new Main<Int>(12, "foo");
  }

  function new(t:T, s:String) { }
}
```

`main`メソッドの中では型パラメータ`Int`の明示付き、引数が`12`と`"foo"`で、`Main`クラス自身のインスタンス化を行っています。私たちが知っているように、この構文は[関数呼び出し](expression-function-call.md)とよく似ており、「コンストラクタ呼び出し」と呼ぶことが多いです。

---

Previous section: [ローカル関数](expression-function.md)

Next section: [forループ](expression-for.md)