## 8.5 実行時型情報（RTTI）

Haxeコンパイラは`:rtti`メタデータで修飾されたクラス、あるいはその子孫クラスに対して実行時型情報（RTTI）を生成します。

##### since Haxe 3.2.0

`haxe.rtti.Rtti`型がRTTIについての処理を簡単にするために導入されました。現在では、情報の取得はとても簡単です。

```haxe
@:rtti
class Main {
  var x:String;
  static function main() {
    var rtti = haxe.rtti.Rtti.getRtti(Main);
    trace(rtti);
  }
}
```

---

Previous section: [リソース](cr-resources.md)

Next section: [RTTIの構造](cr-rtti-structure.md)