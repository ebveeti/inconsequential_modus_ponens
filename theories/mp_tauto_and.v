(*This is one way to get coq understand law of excluded middle without defining it as an axiom.*)
Theorem excluded_middle_irrefutable: forall (P:Prop), ~~(P \/ ~ P).
  tauto.
Qed.
(*Author: Konstantin Weitz https://stackoverflow.com/users/607405/konstantin-weitz*)
(*License: https://creativecommons.org/licenses/by-sa/3.0/*)
(*No changes were made to the original code.*)
(*https://stackoverflow.com/a/32813110*)

(*If modus ponens[1] (the left half of the if and only if statement) is interpreted this way, then it's a tautology.*)
(*In that sense it deduces and says nothing meaningful about how Q can be deduced from P since it's always true.*)
Theorem modus_ponens_tautology: forall P Q: Prop, ((P /\ (P -> Q)) -> Q) <-> ~~(P \/ ~ P).
tauto.
Qed.

(*If modus ponens[1] (the second half of the if and only if statement) is interpreted to be equal to this statement then it's true only when logical conjunction is true.*)
(*This interpretation doesn't say anything really relevant about Q being deduced from P either, since logical conjunction is a very simple logical concept that doesn't comment on how something can be deduced from something else.*)
Theorem modus_ponens_and: forall P Q: Prop, ((P /\ Q) <-> (P /\ (P -> Q))).
tauto.
Qed.

(*Maybe there is a more meaningful form of modus ponens in propositional logic than those that are covered here, but I personally haven't encountered it. I'm interested to hear if such form exists.*)

(*[1] Edgington, Dorothy, 'Indicative Conditionals',
The Stanford Encyclopedia of Philosophy (Fall 2020 Edition),
Edward N. Zalta (ed.)
URL = <https://plato.stanford.edu/archives/fall2020/entries/conditionals/>.*)

