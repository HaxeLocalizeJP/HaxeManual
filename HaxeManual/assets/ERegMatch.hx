class Main {
  static function main() {
    var r = ~/world/;
    var str = "hello world";
    // true : 'world'が文字列に含まれています。
    trace(r.match(str));
    trace(r.match("hello !")); // false
  }
}
