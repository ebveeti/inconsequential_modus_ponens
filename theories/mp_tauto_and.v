(*This is one way to get coq understand law of excluded middle without defining it as an axiom.*)
Theorem excluded_middle_irrefutable: forall (P:Prop), ~~(P \/ ~ P).
  tauto.
Qed.
(*Author: Konstantin Weitz https://stackoverflow.com/users/607405/konstantin-weitz*)
(*License: https://creativecommons.org/licenses/by-sa/3.0/*)
(*No changes were made to the original code.*)
(*https://stackoverflow.com/a/32813110*)

(*Modus ponens[1] is a tautology.*)
Theorem modus_ponens_tautology: forall P Q: Prop, ((P /\ (P -> Q)) -> Q) <-> ~~(P \/ ~ P).
tauto.
Qed.
(*Discovery possibly already made earlier:*)
(*https://math.stackexchange.com/q/3426524*)

(*Modus ponens[1] is a conjunction when given a more lax metalogical interpretation. |- means turnstile.*)
(*((P /\ (P -> Q)) |- Q)*)
Theorem modus_ponens_and: forall P Q: Prop, ((P /\ Q) <-> (P /\ (P -> Q))).
tauto.
Qed.

(*[1]https://plato.stanford.edu/archives/fall2020/entries/conditionals/*)

