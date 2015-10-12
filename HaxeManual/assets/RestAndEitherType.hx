import haxe.extern.Rest;
import haxe.extern.EitherType;

extern class MyExtern {
  static function f1(s:String, r:Rest<Int>):Void;
  static function f2(e:EitherType<Int, String>):Void;
}

class Main {
  static function main() {
    MyExtern.f1("foo", 1, 2, 3); // 1, 2, 3を可変長引数として渡す
    MyExtern.f1("foo"); // 可変長引数なし
    //MyExtern.f1("foo", "bar"); // StringではなくIntであるべき

    MyExtern.f2("foo");
    MyExtern.f2(12);
    //MyExtern.f2(true); // BoolではなくEitherType<Int, String>であるべき
  }
}