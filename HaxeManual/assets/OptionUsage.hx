import haxe.ds.Option;

class Main {
  static public function main() {
    var result = trySomething();
    switch (result) {
      case None:
        trace("Noneを取得");
      case Some(s):
        trace("値を取得: " +s);
    }
  }

  static function trySomething():Option<String> {
    if (Math.random() > 0.5) {
      return None;
    } else {
      return Some("Success");
    }
  }
}