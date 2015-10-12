class Main {
  static public function main() {
    var x = 1/2;
    var y = 20.2;
    var z = -2;

    trace(Math.abs(z)); //2
    trace(Math.sin(x*Math.PI)); //1
    trace(Math.ceil(y)); //21

    // logは自然対数。
    trace(Math.log(Math.exp(5))); //5

    // nekoターゲットの場合の出力。
    // 以下の出力はプラットフォームによって変わりえる。
    trace(1/0); //inf
    trace(-1/0); //-inf
    trace(Math.sqrt(-1)); //nan
  }
}

