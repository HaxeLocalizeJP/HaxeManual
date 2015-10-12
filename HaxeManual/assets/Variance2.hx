class Base {
  public function new() { }
}

class Child extends Base { }

class OtherChild extends Base { }

class Main {
  public static function main () {
    var children = [new Child()];
    // 型チェックを黙らせる
    var bases:Array<Base> = cast children;
    bases.push(new OtherChild());
    for(child in children) {
      trace(child);
    }
  }
}