## 2.2.1 オプション引数とnull許容

null許容について考える場合、オプション引数についても考慮しなくてはいけません。

特に、null許容ではない**ネイティブ**のオプション引数と、それとは異なる、null許容であるHaxe特有のオプション引数があることです。この違いは以下のように、オプション引数にクエスチョンマークを付けることで作ります。

```haxe
// x is a native Int (not nullable)
function foo(x : Int = 0) {}
// y is Null<Int> (nullable)
function bar( ?y : Int) {}
// z is also Null<Int>
function opt( ?z : Int = -1) {}
```

> ##### Trivia: アーギュメント(Argument)とパラメータ(Parameter)
>
> 他のプログラミング言語では、よく**アーギュメント**と**パラメータ**は同様の意味として使われます。Haxeでは、関数に関連する場合に**アーギュメント**を、[型パラメータ](type-system-type-parameters.md)と関連する場合に**パラメータ**を使います。

---

Previous section: [null許容](types-nullability.md)

Next section: [クラスインスタンス](types-class-instance.md)