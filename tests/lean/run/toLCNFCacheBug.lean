import Lean

def f' (x y : Nat) :=
  let s := (x, y)
  let y := s.2
  y + s.2

set_option trace.Compiler true
run_meta Lean.Compiler.compile #[``f']
