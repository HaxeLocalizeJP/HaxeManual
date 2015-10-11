## 4.4.2 inline(インライン化)

`inline`キーワードはその関数の式を関数を呼び出した位置に直接挿し込みできるようにします。これは強力な最適化手段ですが、すべての関数にインライン化の挙動を持つ資格があるわけでありません。基本的な使い方は以下の通りです。

```haxe
class Main {
  static inline function mid(s1:Int, s2:Int) {
    return (s1 + s2) / 2;
  }

  static public function main() {
    var a = 1;
    var b = 2;
    var c = mid(a, b);
  }
}
```

JavaScript出力を見るとインライン化の効果がわかります。

```haxe
(function () { "use strict";
var Main = function() { }
Main.main = function() {
	var a = 1;
	var b = 2;
	var c = (a + b) / 2;
}
Main.main();
})();
```

見てのとおり`mid`フィールドの関数本体の`(s1 + s2) / 2`が、`mid(a, b)`の位置で`s1`を`a`に`s2`を`b`に置き換えられて出力されています。ターゲットによっては消えない場合もありますが、関数呼び出しが消滅しており、これが大きなパフォーマンスの改善になりえます。

インライン化するべきかの判断は簡単ではありません。書き込み処理の無い短い関数(`=`の代入のみといった)は、たいていインライン化すると良いですし、より複雑な関数であってもインライン化する候補となりえます。一方で、インライン化がパフォーマンスに悪影響を与える場合もあります(複雑な式では、コンパイラが一時変数を作るなどのため)。

`inline`キーワードは、インライン化されることを保証しません。コンパイラはさまざまな理由でインライン化をキャンセルします。例えば、コマンドラインの引数で`--no-inline`が与えられた場合です。例外としてクラスが[extern](lf-externs.md)か、フィールドが`:extern`[メタデータ](lf-metadata.md)を付けられていた場合、インライン化が強制されます。インライン化ができない場合、コンパイラはエラーを出力します。

これはインライン化を使う上で重要なので覚えておきましょう。

```haxe
class Main {
  public static function main () { }

  static function test() {
    if (Math.random() > 0.5) {
      return "ok";
    } else {
      error("random failed");
    }
  }

  @:extern static inline function error(s:String) {
    throw s;
  }
}
```

`error`の呼び出しがインライン化できれば、制御フローのチェッカーはインライン化された[throw](expression-throw.md)に満足してプログラムは正しくコンパイルされます。インライン化されなければ、コンパイラは関数呼び出しのみを見て、`A return is missing here`(ここにリターンが足りません)というエラーを出力します。

---

Previous section: [可視性](class-field-visibility.md)

Next section: [dynamic](class-field-dynamic.md)