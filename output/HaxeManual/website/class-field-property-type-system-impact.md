## 4.2.2 型システムへの影響

プロパティの存在は型システム対して、いくつかの重要な影響をもたらします。もっとも重要なのはプロパティはコンパイル時の機能であり、**型がわかっている**必要があるということです。クラスインスタンスを`Dynamic`に代入すると、フィールドアクセスはアクセサメソッドを参照**しません**。同じようにアクセス制限も働かなくなり、すべてのアクセスは`public`と同じになります。

`get`または`set`のアクセス識別子を使うと、コンパイラはゲッターとセッターが本当に存在するかを確認します。以下はコンパイルできません。

```haxe
class Main {
  // xプロパティに必要とされるget_xメソッドが足りません。
  public var x(get, null):Int;
  static public function main() {}
}
```

`get_x`メソッドを忘れていますが、親クラスでそれが定義されていた場合は今のクラスでそれを定義する必要はなくなります。

```haxe
class Base {
  public function get_x() return 1;
}

class Main extends Base {
  // get_xが親クラスで宣言されているので問題ありません
  public var x(get, null):Int;

  static public function main() {}
}
```

`dynamic`アクセス識別子は`get`や`set`と同じように動作しますが、この存在チェックは行われません。

---

Previous section: [よくあるアクセス識別子の組み合わせ](class-field-property-common-combinations.md)

Next section: [ゲッターとセッターのルール](class-field-property-rules.md)