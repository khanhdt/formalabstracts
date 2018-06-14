

def symn_group (α: Type): Type := {f: α → α // function.bijective f}

instance (α: Type): has_one (symn_group α):= 
((id, function.bijective_id))

instance (α: Type): has_mul (symn_group α):= 
(λ(f, f_is_bij) (g, g_is_bij), (f ∘ g, function.bijective_comp f_is_bij g_is_bij)

instance (α: Type): group (symn_group α):=
{
    inv:=_,
    one:= (1),
    mul:=(*),
    mul_assoc := sorry,
    one_mul:= sorry,
    mul_one:=sorry,
    mul_left_inv:=sorry,
}



set_option pp.numerals false
set_option pp.implicit true

example (n: ℕ) (c: cyclic_group n): c =1 :=
_




namespace hn 
example (x y :ℕ): x + y = y+ x:=
nat.add_comm _ _

example (x y :ℕ): x + y = y+ x:=
begin
    exact nat.add_comm _ _
end 

example (x y :ℕ): x+ y = y+ x:=
by    exact nat.add_comm _ _

example (x y :ℕ) (h: y+x =0): x+ y = 0:=
eq.trans (nat.add_comm _ _) h 

example (x y :ℕ) (h: y+x =0): x+ y = 0:=
begin
    refine eq.trans _ _,
    {exact (y + x),},
    {exact nat.add_comm x y},
    {exact h},
end

example (x y :ℕ) (h: y+x =0): x+ y = 0:=
begin
    refine eq.trans _ h,
    exact nat.add_comm x y,
end

example (x y :ℕ) (h: y+x =0): x+ y = 0:=
begin
    rw [nat.add_comm],
    exact  h
end


end hn 



/-K - a field --> define a vector space V over K
Give instance Kn
V: comm-group
need define KxV -> V
            (λ, v) -> λv
    (λ β) V = λ (β V)
    λ (v+ w) =
-/

variable [field K]
class vector_sp (α: Type uvw)