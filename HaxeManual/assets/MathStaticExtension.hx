class MathStaticExtension {
  /* ラジアンから度数への角度の変換。 */
  inline public static function toDegrees(radians:Float):Float {
    return radians * 180 / Math.PI;
  }
}

