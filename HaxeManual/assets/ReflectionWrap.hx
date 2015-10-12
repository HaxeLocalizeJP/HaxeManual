typedef MyStructure = {
  name: String,
  score: Int
}

class Main {
  static function main() {
    var data = reflective();
    //この時点ではdataはちゃんとMyStructureとして型付けされている
  }

  static function reflective():MyStructure {
    // Work with reflection here to get some values we want to return.
    return {
      name: "Reflection",
      score: 0
    }
  }
}
