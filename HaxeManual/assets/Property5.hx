class Base {
  public function get_x() return 1;
}

class Main extends Base {
  // get_xが親クラスで宣言されているので問題ありません
  public var x(get, null):Int;

  static public function main() {}
}