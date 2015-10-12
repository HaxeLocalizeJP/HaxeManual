abstract A(Int) {
  public function new() this = 0;
  @:to public function toB() return new B();
}

abstract B(Int) {
  public function new() this = 0;
  @:to public function toC() return new C();
}

abstract C(Int) {
  public function new() this = 0;
}

class Main {
  static public function main() {
    var a = new A();
    var b:B = a; // 問題無い。A.toBが使われる。
    var c:C = b; // 問題無い。B.toCが使われる。
    var c:C = a; // エラー。A should be C(AではなくCであるべき)
  }
}