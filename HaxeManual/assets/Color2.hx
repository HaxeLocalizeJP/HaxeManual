enum Color {
  Red;
  Green;
  Blue;
  Rgb(r:Int, g:Int, b:Int);
}

class Main {
  static function main() {
    var color = getColor();
    switch (color) {
      case Red: trace("赤色");
      case Green: trace("緑色");
      case Blue: trace("青色");
      case Rgb(r, g, b): trace("この色の赤成分は" +r);
    }
  }

  static function getColor():Color {
    return Rgb(255, 0, 255);
  }
}