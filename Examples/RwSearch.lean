import Mathlib.Tactic.RewriteSearch -- `rw_search` のために必要
import Mathlib.Tactic.Ring

variable (m n : ℕ)

/-! ## rw_search -/

example : (m - n) - n = m - 2 * n := by
  -- `ring` では示せない．自然数は環ではないので当然
  try ring

  -- `aesop` でも示せない
  try aesop

  -- `exact?` でも示せない
  try exact?

  rw_search says
    rw [Nat.sub_sub, Nat.mul_two]

/-! ## rw? -/

example (h : n + m = 0) : n = 0 ↔ m = 0 := by
  -- ゴールは等式ではありませんと言われてエラーになる
  try rw_search

  -- これは `exact?` でも示すことができる
  try
    exact? says
      exact eq_zero_iff_eq_zero_of_add_eq_zero h
    fail

  rw? says
    rw [propext (eq_zero_iff_eq_zero_of_add_eq_zero h)]
