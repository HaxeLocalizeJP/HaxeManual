## 5.24 型チェック

##### since Haxe 3.1.0

以下の構文でコンパイルタイムの型チェックをつけることが可能です。

```haxe
(expr : type)
```

小かっこは必須です。[セーフキャスト](expression-cast-safe.md)とは異なり、実行時に影響はありません。これはコンパイル時の以下の2つの挙動を持ちます。

1. [トップダウンの型推論](type-system-top-down-inference.md)が`expr`に対して`type`の型で適用されます。
2. その結果、`type`の型との[単一化](type-system-unification.md)がされます。

この2つの操作には、[解決順序](type-system-resolution-order.md)が発生している場合や、[抽象型キャスト](types-abstract-implicit-casts.md)で、期待する型へと変化させる、便利な効果があります。

---

Previous section: [セーフキャスト](expression-cast-safe.md)

Next section: [言語機能](lf.md)