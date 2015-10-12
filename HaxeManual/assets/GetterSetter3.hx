class Main {
  // @isVarが物理的フィールドを強制するのでコンパイル可能になります。
  @:isVar public var x(get, set):Int;

  function get_x() {
    return x;
  }

  function set_x(x) {
    return this.x = x;
  }

  static public function main() {}
}
