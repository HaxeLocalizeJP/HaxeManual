class Main {
  static function main() {
    var str = "aaabcbcbcbz";
    // g : インスタンスのすべてを置換する。
    var r = ~/b[^c]/g;
    // "aaabcbcbcxx"
    trace(r.replace(str,"xx"));
  }
}
