class Main {
  // 外からの読み込みが可能で、Mainからのみ書き込みが可能。
  public var ro(default, null):Int;

  // 外からの書き込みが可能で、Mainからのみ読み込みが可能。
  public var wo(null, default):Int;

  // ゲッターのget_xと
  // セッターのset_xを通してアクセスする
  public var x(get, set):Int;

  // ゲッターを通して読み込みアクセスし、
  // 書き込みアクセスはできない。
  public var y(get, never):Int;

  // xフィールドに必要
  function get_x() return 1;

  // xフィールドに必要
  function set_x(x) return x;

  // yフィールドに必要
  function get_y() return 1;

  function new() {
    var v = x;
    x = 2;
    x += 1;
  }

  static public function main() {
    new Main();
  }
}