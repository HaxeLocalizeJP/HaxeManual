## 2.3.3 インターフェース

インターフェースはクラスのパブリックフィールドを記述するもので、クラスの署名ともいうべきものです。インターフェースは実装を持たず、構造に関する情報のみを与えます。

```haxe
interface Printable {
	public function toString():String;
}
```
この構文は以下の点をのぞいて、クラスによく似ています。

* `interface`キーワードを`class`キーワードの代わりに使う。
* 関数が[式](expression.md)を持たない。
* すべてのフィールドが型を明示する必要がある。

インタフェースは、[構造的部分型](type-system-structural-subtyping.md)とは異なり、クラス間の**静的な関係性**について記述します。以下のように明示的に宣言した場合にのみ、クラスはインターフェースと一致します。

```haxe
class Point implements Printable { }
```

`implements`キーワードの記述により、"`Point`は`Printable`である(is-a)"の関係性が生まれます。つまり、すべての`Point`のインスタンスは、`Printable`のインスタンスでもあります。クラスは親のクラスを1つしか持てませんが、以下のように複数の`implements`キーワードを使用することで複数のインターフェースを実装(implements)することが可能です。

```haxe
class Point implements Printable implements Serializable
```

コンパイラは実装が条件を満たしているかの確認を行います。つまり、クラスが実際にインターフェースで要求されるフィールドを実装しているかを確めます。フィールドの実装は、そのクラス自体と、その親となるいずれかのクラスの実装が考慮されます。

インターフェースのフィールドは、変数とプロパティのどちらであるかに対する制限は与えません:

```haxe
interface Placeable {
  public var x:Float;
  public var y:Float;
}

class Main implements Placeable {
  public var x:Float;
  public var y:Float;
  static public function main() { }
}
```

インターフェースは`extends`キーワードで複数のインタフェースを継承することができます。

```haxe
interface Debuggable extends Printable extends Serializable
```

> ##### Trivia: Implementsの構文
>
> Haxeの3.0よりも前のバージョンでは、`implements`キーワードはカンマで区切られていました。Javaのデファクトスタンダードに合わせるため、私たちはカンマを取り除くことに決定しました。これが、Haxe2と3の間の破壊的な変更の1つです。

---

Previous section: [継承](types-class-inheritance.md)

Next section: [列挙型インスタンス](types-enum-instance.md)