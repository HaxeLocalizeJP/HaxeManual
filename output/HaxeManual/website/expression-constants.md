## 5.2 定数値

Haxeの構文では以下の定数値をサポートしています。

* Int: `0`、`1`、`97121`、`-12`、`0xFF0000`といった、[整数](dictionary.md#define-int)
* Float: `0.0`、`1.`、`.3`、`-93.2`といった[浮動小数点数](dictionary.md#define-float)
* String: `""`、`"foo"`、`"`、`'bar'`といった[文字列](dictionary.md#define-string)
* true,false: [真偽値](dictionary.md#define-bool)
* null: null値

また内部の構文木では、[識別子](dictionary.md#define-identifier)は定数値としてあつかわれます。これは、[マクロ](macro.md)を使っているときに関係してくる話題です。

---

Previous section: [ブロック](expression-block.md)

Next section: [配列の宣言](expression-array-declaration.md)