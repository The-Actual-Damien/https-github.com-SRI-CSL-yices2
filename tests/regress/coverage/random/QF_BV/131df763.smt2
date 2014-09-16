(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 2))
(declare-fun v1 () (_ BitVec 2))
(declare-fun v2 () (_ BitVec 3))
(assert (let ((e3(_ bv1 1)))
(let ((e4(_ bv2 2)))
(let ((e5 (bvcomp v0 v1)))
(let ((e6 (bvurem v0 v1)))
(let ((e7 (bvsrem e4 e4)))
(let ((e8 (ite (bvsge e7 v0) (_ bv1 1) (_ bv0 1))))
(let ((e9 (ite (bvule ((_ zero_extend 1) e8) e6) (_ bv1 1) (_ bv0 1))))
(let ((e10 (bvurem v0 e4)))
(let ((e11 (ite (bvule v0 e7) (_ bv1 1) (_ bv0 1))))
(let ((e12 (ite (bvule ((_ sign_extend 2) e9) v2) (_ bv1 1) (_ bv0 1))))
(let ((e13 (ite (bvslt ((_ sign_extend 1) e9) v1) (_ bv1 1) (_ bv0 1))))
(let ((e14 ((_ extract 0 0) e12)))
(let ((e15 ((_ zero_extend 5) v0)))
(let ((e16 (ite (bvugt e4 e7) (_ bv1 1) (_ bv0 1))))
(let ((e17 ((_ zero_extend 12) e14)))
(let ((e18 ((_ repeat 13) e8)))
(let ((e19 (bvcomp v0 v1)))
(let ((e20 ((_ zero_extend 11) e10)))
(let ((e21 (ite (bvule ((_ sign_extend 2) e3) v2) (_ bv1 1) (_ bv0 1))))
(let ((e22 (bvsle ((_ zero_extend 11) e7) e17)))
(let ((e23 (bvule e17 ((_ zero_extend 11) v0))))
(let ((e24 (bvult e18 ((_ sign_extend 12) e3))))
(let ((e25 (bvsgt e3 e16)))
(let ((e26 (= e21 e14)))
(let ((e27 (bvuge ((_ zero_extend 1) e14) v1)))
(let ((e28 (bvugt e16 e9)))
(let ((e29 (bvult ((_ zero_extend 1) e16) v0)))
(let ((e30 (bvslt ((_ sign_extend 6) e9) e15)))
(let ((e31 (bvule ((_ sign_extend 12) e3) e20)))
(let ((e32 (bvugt e16 e12)))
(let ((e33 (bvsge v0 ((_ sign_extend 1) e3))))
(let ((e34 (= e17 ((_ zero_extend 12) e12))))
(let ((e35 (bvsgt e18 ((_ sign_extend 11) e4))))
(let ((e36 (bvsle e8 e13)))
(let ((e37 (= e20 e20)))
(let ((e38 (bvsgt v1 v1)))
(let ((e39 (bvsle ((_ sign_extend 6) e14) e15)))
(let ((e40 (bvugt v0 ((_ sign_extend 1) e12))))
(let ((e41 (= ((_ sign_extend 11) v0) e20)))
(let ((e42 (bvsge v2 ((_ sign_extend 2) e9))))
(let ((e43 (bvsgt ((_ sign_extend 12) e9) e20)))
(let ((e44 (= e20 ((_ sign_extend 12) e21))))
(let ((e45 (bvsle v2 ((_ sign_extend 2) e8))))
(let ((e46 (bvule e3 e3)))
(let ((e47 (bvsge e16 e21)))
(let ((e48 (bvslt ((_ zero_extend 10) v2) e17)))
(let ((e49 (distinct e9 e16)))
(let ((e50 (bvult e6 ((_ sign_extend 1) e14))))
(let ((e51 (bvslt e17 ((_ sign_extend 11) e10))))
(let ((e52 (bvule e20 ((_ sign_extend 11) e4))))
(let ((e53 (bvsgt e19 e12)))
(let ((e54 (bvuge e17 e20)))
(let ((e55 (bvslt ((_ sign_extend 12) e14) e17)))
(let ((e56 (= ((_ zero_extend 2) e19) v2)))
(let ((e57 (= e11 e3)))
(let ((e58 (bvsgt ((_ sign_extend 12) e12) e18)))
(let ((e59 (bvule e15 ((_ sign_extend 5) v1))))
(let ((e60 (= ((_ sign_extend 1) e19) v1)))
(let ((e61 (bvuge e6 v1)))
(let ((e62 (bvule ((_ sign_extend 12) e9) e20)))
(let ((e63 (bvsge e7 ((_ sign_extend 1) e14))))
(let ((e64 (bvsle e4 e6)))
(let ((e65 (= v0 e4)))
(let ((e66 (bvule ((_ sign_extend 1) e5) v0)))
(let ((e67 (ite e58 e48 e55)))
(let ((e68 (= e56 e43)))
(let ((e69 (= e60 e27)))
(let ((e70 (xor e25 e61)))
(let ((e71 (xor e63 e38)))
(let ((e72 (=> e46 e36)))
(let ((e73 (ite e42 e52 e71)))
(let ((e74 (xor e70 e33)))
(let ((e75 (or e23 e24)))
(let ((e76 (ite e75 e37 e73)))
(let ((e77 (and e45 e32)))
(let ((e78 (xor e67 e66)))
(let ((e79 (= e22 e62)))
(let ((e80 (and e40 e54)))
(let ((e81 (xor e47 e31)))
(let ((e82 (xor e72 e64)))
(let ((e83 (or e69 e29)))
(let ((e84 (xor e49 e44)))
(let ((e85 (= e77 e76)))
(let ((e86 (and e50 e28)))
(let ((e87 (or e35 e57)))
(let ((e88 (ite e85 e26 e82)))
(let ((e89 (not e53)))
(let ((e90 (xor e78 e86)))
(let ((e91 (= e65 e84)))
(let ((e92 (ite e79 e41 e30)))
(let ((e93 (or e89 e83)))
(let ((e94 (and e68 e90)))
(let ((e95 (or e74 e74)))
(let ((e96 (ite e93 e81 e51)))
(let ((e97 (ite e59 e87 e95)))
(let ((e98 (xor e96 e94)))
(let ((e99 (xor e39 e34)))
(let ((e100 (or e98 e92)))
(let ((e101 (or e99 e91)))
(let ((e102 (= e100 e100)))
(let ((e103 (ite e102 e101 e101)))
(let ((e104 (xor e88 e88)))
(let ((e105 (=> e80 e97)))
(let ((e106 (ite e104 e103 e104)))
(let ((e107 (not e106)))
(let ((e108 (xor e105 e107)))
(let ((e109 (and e108 (not (= e4 (_ bv0 2))))))
(let ((e110 (and e109 (not (= e4 (bvnot (_ bv0 2)))))))
(let ((e111 (and e110 (not (= v1 (_ bv0 2))))))
e111
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)