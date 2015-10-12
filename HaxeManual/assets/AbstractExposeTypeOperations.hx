abstract MyAbstractInt(Int) from Int to Int {
  // 以下の行は基底のInt型の(A > B)の演算を行います。
  // 関数が本体の式を持たないことに注目してください。
  @:op(A > B) static function gt( a:MyAbstractInt, b:MyAbstractInt ) : Bool;
}

class Main {
  static function main() {
    var a:MyAbstractInt = 42;
    if(a > 0) trace('正しく動作します。>の演算子は実装されています!');

    // <の演算子は実装されていません。
    // 'Cannot compare MyAbstractInt and Int'(MyAbstractIntとIntは比較できません)のエラーが起きます。
    if(a < 100) { }
  }
}
