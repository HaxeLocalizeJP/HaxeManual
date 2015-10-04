## 5.17 switch

基本的なスイッチ式は、`switch`キーワードと、その分岐対象の式から始まり、中かっこ`{}`にはさまれてケース式が並びます。各ケース式は、`case`キーワードからのパターン式か、`default`キーワードで始まります。どちらの場合も、コロンが続き、オプショナルなケース本体の式が来ます。

```haxe
switch subject {
	case pattern1: case-body-expression-1;
	case pattern2: case-body-expression-2;
	default: default-expression;
}
```

ケース本体の式に、「フォールスルー」は起きません。このため、Haxeでは[`break`](expression-break.md)キーワードは使用しません。

スイッチ式は値としてあつかうことができます。その場合、すべてのケース本体の式の型は[単一化](type-system-unification.md)できなくてはいけません。

パターン式については、[Pattern Matching](lf-pattern-matching.md)で詳しく説明されています。

---

Previous section: [if](expression-if.md)

Next section: [try/catch](expression-try-catch.md)