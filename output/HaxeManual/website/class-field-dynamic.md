## 4.4.3 dynamic

メソッドは`dynamic`キーワードをつけることで、束縛のしなおしをできるようにします。

```haxe
class Main {
  static dynamic function test() {
    return "original";
  }

  static public function main() {
    trace(test()); // original
    test = function() { return "new"; }
    trace(test()); // new
  }
}
```

最初の`test()`の呼び出しではもともとの関数を実行して`"original"`の文字列を返します。つぎの行で、`test()`に新しい関数が代入されます。これが`dynamic`が可能にする関数の再束縛です。その結果として、次の`test()`の呼び出しでは`"new"`の文字列が返っています。

`dynamic`フィールドは`inline`フィールドにできません。その理由は明らかです。インライン化はコンパイル時に行われますが、`dynamic`な関数は実行時に解決されます。

---

Previous section: [inline(インライン化)](class-field-inline.md)

Next section: [override](class-field-override.md)