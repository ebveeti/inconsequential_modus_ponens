(*Propositional part of modus ponens is true if and only if a simple conjuction is true*)
Theorem prop_modus_ponens_and: forall P Q: Prop, ((P /\ (P -> Q)) <-> (P /\ Q)).
tauto.
Qed.

(*[1]https://plato.stanford.edu/archives/fall2020/entries/conditionals/*)

