import Std.Tactic.GuardExpr

example (hP : P) : P := by
  -- 現在ローカルコンテキストにある命題を確認できる
  guard_hyp hP : P

  exact hP
