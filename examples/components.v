
Inductive components : Type :=
| sys : components
| vc : components
| ker : components
| rtm : components.

Lemma eqDec_components : 
    forall (x y : components), {x = y} + {x <> y}.
Proof.
    decide equality.
Defined.
