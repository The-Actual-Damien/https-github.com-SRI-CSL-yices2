(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_NRA)
(declare-fun v0 () Real)
(declare-fun v1 () Real)
(assert (let ((e2 3))
(let ((e3 0))
(let ((e4 0))
(let ((e5 (- v0)))
(let ((e6 (- v1)))
(let ((e7 (+ e5 v1)))
(let ((e8 (/ e3 (- e2))))
(let ((e9 (- v0 e8)))
(let ((e10 (* e5 (- e4))))
(let ((e11 (<= v1 e7)))
(let ((e12 (distinct e7 e6)))
(let ((e13 (> e6 v0)))
(let ((e14 (distinct e9 e10)))
(let ((e15 (distinct e8 e7)))
(let ((e16 (= e7 e10)))
(let ((e17 (distinct e8 v0)))
(let ((e18 (>= e10 v0)))
(let ((e19 (distinct e6 e6)))
(let ((e20 (> v1 e5)))
(let ((e21 (>= e6 e10)))
(let ((e22 (= e5 e8)))
(let ((e23 (<= e8 e5)))
(let ((e24 (distinct e5 e9)))
(let ((e25 (<= v0 v1)))
(let ((e26 (<= e9 e8)))
(let ((e27 (>= e10 e9)))
(let ((e28 (>= e5 e7)))
(let ((e29 (or e21 e24)))
(let ((e30 (or e12 e16)))
(let ((e31 (ite e29 e27 e17)))
(let ((e32 (not e26)))
(let ((e33 (= e14 e15)))
(let ((e34 (or e13 e23)))
(let ((e35 (and e32 e20)))
(let ((e36 (and e22 e22)))
(let ((e37 (= e35 e36)))
(let ((e38 (or e33 e30)))
(let ((e39 (xor e38 e28)))
(let ((e40 (= e25 e37)))
(let ((e41 (and e19 e39)))
(let ((e42 (not e34)))
(let ((e43 (or e41 e42)))
(let ((e44 (and e11 e31)))
(let ((e45 (=> e40 e40)))
(let ((e46 (xor e45 e44)))
(let ((e47 (xor e18 e43)))
(let ((e48 (not e46)))
(let ((e49 (not e47)))
(let ((e50 (not e49)))
(let ((e51 (or e48 e50)))
e51
)))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
