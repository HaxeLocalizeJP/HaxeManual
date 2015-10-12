@:enum
abstract HttpStatus(Int) {
  var NotFound = 404;
  var MethodNotAllowed = 405;
}

class Main {
  static public function main() {
    var status = HttpStatus.NotFound;
    var msg = printStatus(status);
  }

  static function printStatus(status:HttpStatus) {
    return switch(status) {
      case NotFound:
        "ページが見つかりません";
      case MethodNotAllowed:
        "無効なメソッドです";
    }
  }
}