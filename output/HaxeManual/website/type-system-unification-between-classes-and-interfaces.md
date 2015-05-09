## 3.5.1 クラスとインターフェースの単一化

<<<<<<< HEAD:md/manual/type-system-unification-between-classes-and-interfaces.md
クラスの間の単一化について定義を行う場合、単一化が指向性を持つことを心に留めておくべきです。より特殊なクラス(例えば、子クラス)を一般的なクラス(例えば、親クラス)に対して代入することはできますが、逆はできません。
=======
When defining unification behavior between classes, it is important to remember that unification is directional: We can assign a more specialized class (e.g. a child class) to a generic class (e.g. a parent class) but the reverse is not valid.
>>>>>>> english/master:output/HaxeManual/website/type-system-unification-between-classes-and-interfaces.md

以下のような、代入が許可されます。

* 子クラスの親クラスへの代入
* クラスの実装済みのインターフェースへの代入
* インターフェースの親インターフェースへの代入

これらのルールは連結可能です。つまり、子クラスをその親クラスの親クラスへ代入可能であり、さらに親クラスが実装しているインターフェースへ代入可能であり、そのインターフェースの親インターフェースへ代入可能であるということです。

---

Previous section: [単一化(ユニフィケーション)](type-system-unification.md)

Next section: [構造的部分型付け](type-system-structural-subtyping.md)
