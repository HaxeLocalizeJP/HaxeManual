## 5.23.1 非セーフキャスト

非セーフキャストは型システムを無力化するのに役立ちます。コンパイラは`expr`を通常通りに型付けし、それを[単相](types-monomorph.md)でつつみ込みます。これにより、その式をあらゆるものに割り当てすることが可能になります。

非セーフキャストは以下の例が示すように、[Dynamic](types-dynamic.md)への型変更ではありません。

```haxe
class Main {
  public static function main() {
    var i = 1;
    $type(i); // Int
    var s = cast i;
    $type(s); // Unknown<0>
    Std.parseInt(s);
    $type(s); // String
  }
}
```

変数`i`は`Int`と型付けされて、非セーフキャスト`cast i`を使って変数`s`に代入しました。`s`は`Unknown`型、つまり単相となりました。その後は、通常の[単一化](type-system-unification.md)のルールに従って、あらゆる型へと結びつけることが可能です。例では、`String`型となりました。

これらのキャストは「非セーフ」と呼ばれます。これは実行時の不正なキャストが定義されてないためです。 ほとんどの[動的ターゲット](dictionary.md#define-dynamic-target)では動作する可能性が高いですが、[静的ターゲット](dictionary.md#define-static-target)では未知のエラーの原因になりえます。

非セーフキャストは実行時のオーバーヘッドはほぼ、または全くありません。

---

Previous section: [cast](expression-cast.md)

Next section: [セーフキャスト](expression-cast-safe.md)