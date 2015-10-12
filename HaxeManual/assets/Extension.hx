typedef IterableWithLength<T> = {
  > Iterable<T>,
  // 読み込み専用プロパティ
  var length(default, null):Int;
}

class Main {
  static public function main() {
    var array = [1, 2, 3];
    var t:IterableWithLength<Int> = array;
  }
}