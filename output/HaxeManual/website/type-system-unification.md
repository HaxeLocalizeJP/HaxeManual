## 3.5 単一化(ユニフィケーション)

単一化は型システムの要であり、Haxeの堅牢さに大きく貢献しています。この節ではある型が他の型と適合するかどうかをチェックする過程を説明していきます。

> ##### Define: 単一化
>
> 型Aの型Bでの単一化というのは、AがBに代入可能かを調べる指向性を持つプロセスです。型が[単相](types-monomorph.md)の場合または単相を含む場合は、それを変化させることができます。

単一化のエラーは簡単に起こすことができます。

```haxe
class Main {
	static public function main() {
    // Int should be String
		var s:String = 1;
	}
}
```

`Int`型の値を`String`型の変数に代入しようとしたので、コンパイラは**IntをStringで単一化**しようと試みます。これはもちろん許可されておらず、コンパイラは`"Int should be String"`というエラーを出力します。

<<<<<<< HEAD:md/manual/type-system-unification.md
このケースでは単一化は**代入**によって引き起こされており、この文脈は「代入可能」という定義に対して直感的です。ただ、これは単一化が働くケースのうちの1つでしかありません。

* 代入: `a`が`b`に代入された場合、`a`の型は`b`で単一化されます。
* 関数呼び出し: [関数](types-function.md)の型の紹介ですでに触れています。一般的に言うと、コンパイラは渡された最初の引数の型を要求される最初の引数の型で単一化し、渡された二番目の引数の型を要求される二番目の引数の型で単一化するということを、すべての引数で行います。
* 関数のreturn: 関数が`return e`の式をもつ場合は常に`e`の型は関数の戻り値の型で単一化されます。もし関数の戻り値の型が明示されていなければ、`e`の型に型推論されて、それ以降の`return`式は`e`の型に推論されます。
* 配列の宣言: コンパイラは、配列の宣言では与えられたすべての型に共通する最小の型を見つけようとします。詳細は[共通の基底型](type-system-unification-common-base-type.md)を参照してください。
* オブジェクトの宣言: オブジェクトを指定された型に対して宣言する場合、コンパイラは与えられたフィールドすべての型を要求されるフィールドの型で単一化します。
* 演算子の単一化: 特定の型を要求する特定の演算子は、与えられた型をその型で単一化します。例えば、`a && b`という式は`a`と`b`両方を`Bool`で単一化します。式`a == b`は`a`を`b`で単一化します。
=======
* Assignment: If `a` is assigned to `b`, the type of `a` is unified with the type of `b`.
* Function call: We have briefly seen this one while introducing the [function](types-function.md) type. In general, the compiler tries to unify the first given argument type with the first expected argument type, the second given argument type with the second expected argument type and so on until all argument types are handled.
* Function return: Whenever a function has a `return e` expression, the type of `e` is unified with the function return type. If the function has no explicit return type, it is inferred to the type of `e` and subsequent `return` expressions are inferred against it.
* Array declaration: The compiler tries to find a minimal type between all given types in an array declaration. Refer to [Common Base Type](type-system-unification-common-base-type.md) for details.
* Object declaration: If an object is declared "against" a given type, the compiler unifies each given field type with each expected field type.
* Operator unification: Certain operators expect certain types which the given types are unified against. For instance, the expression `a && b` unifies both `a` and `b` with `Bool` and the expression `a == b` unifies `a` with `b`.
>>>>>>> english/master:output/HaxeManual/website/type-system-unification.md

---

Previous section: [変性(バリアンス)](type-system-variance.md)

Next section: [クラスとインターフェースの単一化](type-system-unification-between-classes-and-interfaces.md)