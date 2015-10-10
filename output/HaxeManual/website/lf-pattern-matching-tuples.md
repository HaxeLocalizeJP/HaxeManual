## 6.4.8 複数の値のマッチング

配列の構文は複数の値のマッチングにも使えます。

```haxe
    var s = switch [1, false, "foo"] {
      case [1, false, "bar"]: "0";
      case [_, true, _]: "1";
      case [_, false, _]: "2";
    }
    trace(s); // 2
```

これは通常の配列のマッチングによく似ていますが、以下の点で違います。

* 要素数は固定です。このためパターンの配列の長さが違ってはいけません。
* switchしている値を取得できません。例えば、`case x`は使えません(`case _`は使えます)。

---

Previous section: [ガード](lf-pattern-matching-guards.md)

Next section: [抽出子(エクストラクタ)](lf-pattern-matching-extractors.md)