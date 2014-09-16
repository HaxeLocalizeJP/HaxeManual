## 2.7.1 型パラメータ付きのダイナミック

`Dynamic`は、[型パラメータ](type-system-type-parameters.md)を付けても付けなくても良いという点でも特殊な型です。型パラメータを付けた場合、[ダイナミック](types-dynamic.md)のすべてのフィールドがパラメータの型であることが強制されます。

```haxe
var att : Dynamic<String> = xml.attributes;
// valid, value is a String
att.name = "Nicolas";
// dito (this documentation is quite old)
att.age = "26";
// error, value is not a String
att.income = 0;
```

---

Previous section: [ダイナミック](types-dynamic.md)

Next section: [ダイナミックを実装(implements)する](types-dynamic-implemented.md)