## 8.3.5 使用状況の補完

##### since Haxe 3.2.0

使用状況の補完は`"usage"`モードの引数を使うことで使用できます（詳しくは[概要](cr-completion-overview.md)）。ローカル変数を使って実演しますが、フィールドと型についても同じように動作することも覚えておきましょう。

```haxe
class Main {
  public static function main() {
    var a = 1;
    var b = a + 1;
    trace(a);
    a.|
  }
}
```

このファイルをMain.hxとして保存すると、補完を`haxe --display Main.hx@0@usage`のコマンドで呼び出せます。この出力は以下のようになります。

```haxe
<list>
<pos>main.hx:4: characters 9-10</pos>
<pos>main.hx:5: characters 7-8</pos>
<pos>main.hx:6: characters 1-2</pos>
</list>
```

---

Previous section: [型のパスの補完](cr-completion-type-path.md)

Next section: [定義位置の補完](cr-completion-position.md)