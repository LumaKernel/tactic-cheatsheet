-- ANCHOR: first
example (hp: P) (hq: Q) : P ∧ Q := by
  -- goal が `left` と `right` に分割される
  constructor
  · -- `P` を示す
    exact hp
  · -- `Q` を示す
    exact hq
-- ANCHOR_END: first


-- ANCHOR: iff
example (x : Nat) : x = 0 ↔ x + 1 = 1 := by
  constructor
  · -- `x = 0 → x + 1 = 1` を示す
    intro hx
    rw [hx]
  · -- `x + 1 = 1 → x = 0` を示す
    simp_all
-- ANCHOR_END: iff