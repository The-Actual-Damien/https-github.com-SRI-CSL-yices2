(set-logic QF_UF)
(set-info :smt-lib-version 2.0)
(declare-fun x () Bool)
(declare-fun y () Bool)
(declare-fun z () Bool)
(assert (or x y z))
(assert (or x (not y) z))
(assert (or x (not y) (not z)))
(assert (or (not x) y z))
(assert (or (not x) y (not z)))
(assert (or (not x) (not y) z))
(assert (or (not x) (not y) (not z)))
(check-sat)
(exit)
