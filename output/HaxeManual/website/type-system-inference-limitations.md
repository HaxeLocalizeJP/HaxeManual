## 3.6.2 制限

ローカル変数をあつかう場合、型推論のおかげで多くの手動の型付けを省略できますが、型システムが助けを必要とする場面もあります。実際、[変数フィールド](class-field-variable.md)や[プロパティ](class-field-property.md)では、直接の初期化をしていない限りは型推論されません。

また、再帰的な関数呼び出しでも型推論が制限される場面があります。型がまだ(完全に)わかっていない場合、型推論が間違って特殊すぎる型を推論する場合があります。

A different kind of limitation involves the readability of code. If type inference is overused it might be difficult to understand parts of a program due to the lack of visible types. This is particularly true for method signatures. It is recommended to find a good balance between type inference and explicit type hints.

---

Previous section: [トップダウンの推論](type-system-top-down-inference.md)

Next section: [モジュールとパス](type-system-modules-and-paths.md)