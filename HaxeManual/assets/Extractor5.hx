class Main {
  static public function main() {
    switch("foo") {
      // orパターン内で抽出子は使えません。
      case (_.toLowerCase() => "foo") | "bar":
    }
  }
}