## 5.7 フィールドへのアクセス

フィールドへのアクセスはドット(`.`)の後にフィールドの名前を続けることで表現します。

```haxe
object.fieldName
```

この構文は`pack.Type`の形でパッケージ内の型にアクセスするのにも使われます。

型付け器はアクセスされたフィールドが本当に存在するかをチェックして、フィールドの種類に依存した変更を適用します。もしフィールドへのアクセスが複数の意味にとれる場合は、[解決順序](type-system-resolution-order.md)の理解が役に立つでしょう。

---

Previous section: [オブジェクトの宣言](expression-object-declaration.md)

Next section: [配列アクセス](expression-array-access.md)