class Base {
  public function new() { }
  private function baseField() { }
}

class Child1 extends Base {
  private function child1Field() { }
}

class Child2 extends Base {
  public function child2Field() {
    var child1 = new Child1();
    child1.baseField();
    // privateなフィールドchild1Fieldにアクセスできません
    child1.child1Field();
  }
}

class Main {
  static public function main() { }
}