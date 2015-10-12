class Main {
  static public function main() {
    equals(1, 1);
    // 実行時のメッセージ: bar should be foo
    equals("foo", "bar");
    // コンパイルエラー: String should be Int
    equals(1, "foo");
  }

  static function equals<T>(expected:T, actual:T) {
    if (actual != expected) {
      trace('$actual should be $expected');
    }
  }
}