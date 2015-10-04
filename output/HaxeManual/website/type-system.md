## 3 型システム

私たちは[型](types.md)の章でさまざまな種類の型について学んできました。ここからはそれらがお互いにどう関連しあっているかを見ていきます。まず、複雑な型に対して別名を与える仕組みである[Typedef](type-system-typedef.md)の紹介から簡単に始めます。typedefは特に、[型パラメータ](type-system-type-parameters.md)を持つ型で役に立ちます。

任意の2つの型について、その上位の型のグループが矛盾しないかをチェックすることで多くの型安全性が得られます。これがコンパイラが試みる**単一化**であり、[単一化(ユニファイ)](type-system-unification.md)の節で詳しく説明します。

すべての型は**モジュール**に所属し、**パス**を通して呼び出されます。[モジュールとパス](type-system-modules-and-paths.md)では、これらに関連した仕組みについて詳しく説明します。

---

Previous section: [単相(モノモーフ)](types-monomorph.md)

Next section: [typedef](type-system-typedef.md)