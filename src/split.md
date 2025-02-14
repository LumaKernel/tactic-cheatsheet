# split

ゴールにある `if ... then ... else` 式を扱うのに有用なタクティクです．

if 式を扱う必要が生じるのは，典型的には Lean で定義したアルゴリズムや関数に関して，何か性質を証明しようとしたときです．

ゴールが `⊢ Q (if P then a else b)` であったときに，`split` を使用すると2つのサブゴールが生成されます．具体的には

* 1つはローカルコンテキストに `† : P` が追加され，ゴールが `⊢ Q (a)`
* 1つはローカルコンテキストに `† : ¬ P` が追加され，ゴールが `⊢ Q (b)`

というサブゴールです．`split` によって追加される仮定は名前がついているとは限りません．名前がついていなかった場合，`case` などで名前を付けることができます．

```lean
{{#include ../Examples/Split.lean}}
```