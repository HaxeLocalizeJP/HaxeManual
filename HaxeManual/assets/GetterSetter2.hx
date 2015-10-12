class Main {
  // 物理的フィールドを持たないので、フィールドにアクセス
  public var x(get, set):Int;

  function get_x() {
    return x;
  }

  function set_x(x) {
    return this.x = x;
  }

  static public function main() {}
}
