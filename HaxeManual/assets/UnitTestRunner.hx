class Main {
  static function main() {
    var r = new haxe.unit.TestRunner();
    r.add(new MyTestCase());
    // ここに他のTestCaseを足す。

    // 最後にテストを走らせる。
    r.run();
  }
}
