class ImplementsDynamic
  implements Dynamic<String> {
  public var present:Int;
  public function new() {}
}

class Main {
  static public function main() {
    var c = new ImplementsDynamic();
    // 問題無い。presentフィールドは存在する。
    c.present = 1;
    // 問題無い。Stringを代入している。
    c.stringField = "foo";
    // エラー。 Int should be String(IntではなくStringであるべき)
    //c.intField = 1;
  }
}