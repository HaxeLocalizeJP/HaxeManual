## 8.4 リソース

Haxeは単純なリソース埋め込みのシステムを提供しています。これによりファイルをコンパイル後のアプリケーションに直接埋め込むことができます。

この方法は画像や音楽のような巨大なファイルの埋め込みには適していないかもしれませんが、設定やXMLのようなより小さなデータを埋め込むのにはとても便利です。

### 8.4.1 リソースの埋め込み

以下のように、**-resource**のコンパイラ引数をつかって外部ファイルの埋め込みができます。

```haxe
-resource hello_message.txt@welcome
```

**@**マークの後の文字列は**リソースの識別子**です。コードからリソースを取得するのに使います。省略された場合（**@**マークごと）、ファイル名がリソース識別子として使われます。

### 8.4.2 テキストリソースを取得する

埋め込んだリソースを取得するには、`haxe.Resource`の**getString**の静的メソッドにリソース識別子を渡して事項します。

```haxe
class Main {
  static function main() {
    trace(haxe.Resource.getString("welcome"));
  }
}

```

上記のコードは先ほどの**welcome**を識別子として使って**hello_message.txt**ファイルの内容を表示します。

### 8.4.3 バイナリリソースを取得する

巨大バイナリファイルをアプリケーションに埋め込むのは推奨されないものの、バイナリデータの埋め込みは便利です。埋め込んだリソースは`haxe.Resource`の**getBytes**の静的メソッドを使うことでバイナリとして取得できます。

```haxe
class Main {
  static function main() {
    var bytes = haxe.Resource.getBytes("welcome");
    trace(bytes.readString(0, bytes.length));
  }
}

```

**getBytes**メソッドの戻り値の型は、データの各バイトにアクセスできる`haxe.io.Bytes`です。

### 8.4.4 実装の詳細

ターゲットのプラットフォームにリソースの埋め込み機能があればそれを使います。その他の場合、独自の実装を持ちます。

* **Flash** リソースは`ByteArray`として定義されて埋め込まれる。
* **C#** コンパイルされたアセンブリに含まれる。
* **Java** JARファイル内にパッケージされる。
* **C++** グローバルなバイト列の定数として記録される。
* **JavaScript** Haxeシリアル化フォーマットに従ってシリアル化されて`haxe.Resource`の静的フィールドに記録される。
* **Neko** 文字列として`haxe.Resource`クラスの静的フィールドに記録される。

---

Previous section: [補完サーバー](cr-completion-server.md)

Next section: [実行時型情報（RTTI）](cr-rtti.md)