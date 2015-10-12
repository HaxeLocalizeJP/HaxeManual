import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Type;

class GenericBuildMacro2 {
  static public function build() {
    switch (Context.getLocalType()) {
      case TInst(_,[TInst(_.get() => { kind: KExpr(macro $v{(s:String)}) },_)]):
        trace(s);
      case t:
        Context.error("Classが要求されています", Context.currentPos());
    }
    return null;
  }
}