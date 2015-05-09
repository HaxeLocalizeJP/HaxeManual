## 3 型システム

私たちは[型](types.md)の章でさまざまな種類の型について学んできました。ここからはそれらがお互いにどう関連しあっているかを見ていきます。まず、複雑な型に対して名前(別名)を与える仕組みである[Typedef](type-system-typedef.md)の紹介から簡単に始めます。typedefは特に、[型パラメータ](type-system-type-parameters.md)を持つ型で役に立ちます。

<<<<<<< HEAD:md/manual/type-system.md
任意の2つの型について、その上位の型のグループが矛盾しないかをチェックすることで多くの型安全性が得られます。これがコンパイラが試みる**単一化**であり、[単一化(ユニフィケーション)](type-system-unification.md)の節で詳しく説明します。
=======
A lot of type-safety is achieved by checking if two given types of the type groups above are compatible. Meaning, the compiler tries to perform **unification** between them as detailed in [Unification](type-system-unification.md).
>>>>>>> english/master:output/HaxeManual/website/type-system.md

すべての型は**モジュール**に所属し、**パス**を通して呼び出されます。[Modules and Paths](type-system-modules-and-paths.md)では、これらに関連した仕組みについて詳しい説明を行います。

---

Previous section: [単相型](types-monomorph.md)

Next section: [typedef](type-system-typedef.md)
