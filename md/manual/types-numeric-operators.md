## 2.1.3 数値の演算子

##### 算術演算
 
 演算子  | 演算  | 引数1  | 引数2  | 戻り値 
 --- | --- | --- | --- | ---
<code>++</code>  | 1増加  | `Int`  | なし  | `Int`
 |  | `Float`  | なし  | `Float`
<code>--</code>  | 1減少  | `Int`  | なし  | `Int`
 |  | `Float`  | なし  | `Float`
<code>+</code>  | 加算  | `Float`  | `Float`  | `Float` 
 |  | `Float`  | `Int`  | `Float` 
 |  | `Int`  | `Float`  | `Float` 
 |  | `Int`  | `Int`  | `Int` 
<code>-</code>  | 減算  | `Float`  | `Float`  | `Float` 
 |  | `Float`  | `Int`  | `Float` 
 |  | `Int`  | `Float`  | `Float` 
 |  | `Int`  | `Int`  | `Int` 
<code>*</code>  | 乗算  | `Float`  | `Float`  | `Float` 
 |  | `Float`  | `Int`  | `Float` 
 |  | `Int`  | `Float`  | `Float` 
 |  | `Int`  | `Int`  | `Int` 
<code>/</code>  | 除算  | `Float`  | `Float`  | `Float` 
 |  | `Float`  | `Int`  | `Float` 
 |  | `Int`  | `Float`  | `Float` 
 |  | `Int`  | `Int`  | `Float` 
<code>%</code>  | 剰余  | `Float`  | `Float`  | `Float` 
 |  | `Float`  | `Int`  | `Float` 
 |  | `Int`  | `Float`  | `Float` 
 |  | `Int`  | `Int`  | `Int` 
 
##### 比較演算
 
 演算子  | 演算  | 引数1  | 引数2  | 戻り値 
 --- | --- | --- | --- | --- | --- | --- | --- | ---
<code>==</code>  | 等価  | `Float/Int`  | `Float/Int`  | `Bool` 
<code>!=</code>  | 不等価  | `Float/Int`  | `Float/Int`  | `Bool` 
<code>&lt;</code>  | より小さい  | `Float/Int`  | `Float/Int`  | `Bool` 
<code>&lt;=</code>  | より小さいか等しい  | `Float/Int`  | `Float/Int`  | `Bool` 
<code>&gt;</code>  | より大きい  | `Float/Int`  | `Float/Int`  | `Bool` 
<code>&gt;=</code>  | より大きいか等しい  | `Float/Int`  | `Float/Int`  | `Bool` 
 
##### ビット演算
 
 演算子  | 演算  | 引数1  | 引数2  | 戻り値 
 --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
<code>~</code>  | ビット単位の否定(NOT)  | `Int`  | なし  | `Int` 
<code>&amp;</code>  | ビット単位の論理積(AND)  | `Int`  | `Int`  | `Int` 
<code>&#124;</code>  | ビット単位の論理和(OR)  | `Int`  | `Int`  | `Int` 
<code>^</code>  | ビット単位の排他的論理和(XOR)  | `Int`  | `Int`  | `Int` 
<code>&lt;&lt;</code>  | 左シフト  | `Int`  | `Int`  | `Int` 
<code>&gt;&gt;</code>  | 右シフト  | `Int`  | `Int`  | `Int` 
<code>&gt;&gt;&gt;</code>  | 符号なしの右シフト  | `Int`  | `Int`  | `Int`

---

Previous section: [オーバーフロー](types-overflow.md)

Next section: [Bool(真偽値)](types-bool.md)