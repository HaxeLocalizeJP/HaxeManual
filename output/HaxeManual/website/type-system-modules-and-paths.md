## 3.7 モジュールとパス

> ##### Define: モジュール
>
> 
> すべてのHaxeのコードはモジュールに属しており、パスを使って指定されます。要するに、.hxファイルそれぞれが一つのモジュールを表し、その中にいくつか型を置くことができます。型は`private`にすることが可能で、その場合はその型の属するモジュールからしかアクセスできません。

モジュールとそれにふくまれる型との区別は意図的に不明瞭です。実際、`haxe.ds.StringMap<Int>`の指定は、`haxe.ds.StringMap.StringMap<Int>`の省略形とも考えられます。後者は4つ部位で構成されています。

1. パッケージ `haxe.ds`
2. モジュール名 `StringMap`
3. 型名 `StringMap`
4. 型パラメータ `Int`

モジュールと型の名前が同じの場合、重複を取り除くことが可能で、これで`haxe.ds.StringMap<Int>`という省略形が使えます。しかし、長い記述について知っていれば、[モジュールのサブタイプ](type-system-module-sub-types.md)の指定の仕方の理解しやすくなります。

パスは、[import](type-system-import.md)を使ってパッケージの部分を省略することで、さらに短くすることができます。importの利用は不適切な識別子を作ってしまう場合があるので、[解決順序](type-system-resolution-order.md)についての理解が必要です。

> ##### Define: 型のパス
>
> (ドット区切りの)型のパスはパッケージ、モジュール名、型名から成ります。この一般的な形は`pack1.pack2.packN.ModuleName.TypeName`です。

---

Previous section: [制限](type-system-inference-limitations.md)

Next section: [モジュールのサブタイプ(従属型)](type-system-module-sub-types.md)