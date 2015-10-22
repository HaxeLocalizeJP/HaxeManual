## 8.3.4 型のパスの補完

型のパスの補完は[import宣言](type-system-import.md)、[using宣言](lf-static-extension.md)あるいはあらゆる位置での型の記述で発生します。そしてこれは以降の3種類に分けることができます。

##### パッケージの補完

以下はhaxeパッケージに属する子パッケージとモジュールのすべてをリストアップします。

```haxe
import haxe.|
```

```haxe
<list>
<i n="CallStack"><t></t><d></d></i>
<i n="Constraints"><t></t><d></d></i>
<i n="DynamicAccess"><t></t><d></d></i>
<i n="EnumFlags"><t></t><d></d></i>
<i n="EnumTools"><t></t><d></d></i>
<i n="Http"><t></t><d></d></i>
<i n="Int32"><t></t><d></d></i>
<i n="Int64"><t></t><d></d></i>
<i n="Json"><t></t><d></d></i>
<i n="Log"><t></t><d></d></i>
<i n="PosInfos"><t></t><d></d></i>
<i n="Resource"><t></t><d></d></i>
<i n="Serializer"><t></t><d></d></i>
<i n="Template"><t></t><d></d></i>
<i n="Timer"><t></t><d></d></i>
<i n="Ucs2"><t></t><d></d></i>
<i n="Unserializer"><t></t><d></d></i>
<i n="Utf8"><t></t><d></d></i>
<i n="crypto"><t></t><d></d></i>
<i n="ds"><t></t><d></d></i>
<i n="extern"><t></t><d></d></i>
<i n="format"><t></t><d></d></i>
<i n="io"><t></t><d></d></i>
<i n="macro"><t></t><d></d></i>
<i n="remoting"><t></t><d></d></i>
<i n="rtti"><t></t><d></d></i>
<i n="unit"><t></t><d></d></i>
<i n="web"><t></t><d></d></i>
<i n="xml"><t></t><d></d></i>
<i n="zip"><t></t><d></d></i>
</list>
```

##### モジュールのインポートの補完

以下は、`haxe.Unserializer`モジュールの[サブタイプ](type-system-module-sub-types.md)と、`haxe.Unserializer`の`public static`なフィールド（これらもインポート可能なので）のすべてをリストアップします。

```haxe
import haxe.Unserializer.|
```

```haxe
<list>
<i n="DEFAULT_RESOLVER">
  <t>haxe.TypeResolver</t>
  <d>
    This value can be set to use custom type resolvers.

    A type resolver finds a Class or Enum instance from a given String.
    By default, the haxe Type Api is used.

    A type resolver must provide two methods:

    1. resolveClass(name:String):Class&lt;Dynamic&gt; is called to
      determine a Class from a class name
    2. resolveEnum(name:String):Enum&lt;Dynamic&gt; is called to
      determine an Enum from an enum name

    This value is applied when a new Unserializer instance is created.
    Changing it afterwards has no effect on previously created
    instances.
  </d>
</i>
<i n="run">
  <t>v : String -&gt; Dynamic</t>
  <d>
    Unserializes `v` and returns the according value.

    This is a convenience function for creating a new instance of
    Unserializer with `v` as buffer and calling its unserialize()
    method once.
  </d>
</i>
<i n="TypeResolver"><t></t><d></d></i>
<i n="Unserializer"><t></t><d></d></i>
</list>
```

```haxe
using haxe.Unserializer.|
```

##### その他のモジュールの補完

以下は、`haxe.Unserializer`のすべての[サブタイプ](type-system-module-sub-types.md)をリストアップします。

```haxe
using haxe.Unserializer.|
```

```haxe
class Main {
  static public function main() {
    var x:haxe.Unserializer.|
  }
}
```

```haxe
<list>
<i n="TypeResolver"><t></t><d></d></i>
<i n="Unserializer"><t></t><d></d></i>
</list>
```

---

Previous section: [呼び出し引数の補完](cr-completion-call-argument.md)

Next section: [使用状況の補完](cr-completion-usage.md)