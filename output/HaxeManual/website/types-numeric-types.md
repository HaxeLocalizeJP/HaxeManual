## 2.1.1 数値型

> ##### Define: Float
>
> IEEEの64bit倍精度浮動小数点数を表します。

> ##### Define: Int
>
> 整数を表します。

`Int`は`Float`が期待されるすべての場所で使用することが可能です （IntはFloatへの代入が可能で、Floatとして表現可能です）。しかし、逆はできません。 `Float`から`Int`への代入は精度を失ってしまう場合があり、信頼できません。

---

Previous section: [基本型](types-basic-types.md)

Next section: [オーバーフロー](types-overflow.md)