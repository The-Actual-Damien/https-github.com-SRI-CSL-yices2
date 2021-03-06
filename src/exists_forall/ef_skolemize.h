/*
 * This file is part of the Yices SMT Solver.
 * Copyright (C) 2020 SRI International.
 *
 * Yices is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Yices is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Yices.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * Skolemization for the EF solver.
 */

#ifndef __EF_SKOLEMIZE_H
#define __EF_SKOLEMIZE_H

#include "exists_forall/ef_analyze.h"
#include "terms/term_utils.h"

#include "yices_types.h"

/*
 * skolemize object:
 */
typedef struct ef_skolemize_s {
  ef_analyzer_t *analyzer;
  ef_prob_t *prob;
  bool flatten_ite;
  bool flatten_iff;
  bool ematching;

  term_manager_t *mgr;
  term_table_t *terms;
  ivector_t uvars;
  ivector_t aux;
  bool has_uvars;

  // for error reporting: some terms are not supported
  // if we see them, we set failed to true and store the term kind in unsupported
  bool failed;
  term_kind_t unsupported;

  ptr_hmap_t cache;
} ef_skolemize_t;


/*
 * Initialize the skolemize object
 */
extern void init_ef_skolemize(ef_skolemize_t *sk, ef_analyzer_t *analyzer, ef_prob_t *prob,
    bool f_ite, bool f_iff, bool ematching);


/*
 * Delete the skolemize object
 */
extern void delete_ef_skolemize(ef_skolemize_t *sk);


/*
 * Get the skolemized version of term t
 */
extern void ef_skolemize(ef_skolemize_t *sk, term_t t, ivector_t *v);


/*
 * Skolemize patterns
 */
extern void ef_skolemize_patterns(ef_skolemize_t *sk);


/*
 * Skolemize variable x using uvars as skolem arguments
 * - n = number of variables in uvars
 * - increment ef->num_skolem_funs if n>0.
 * - return a pair of terms (func, fapp):
 *    func = skolem function or skolem constant
 *    fapp = term that represents x
 *
 * - if n = 0:
 *    func is a skolem constant of the same type as x
 *    fapp is equal to func
 * - if n > 0
 *    func is a skolem function of type [s_1 ... s_n-> tau]
 *    fapp is the term (func uvars[0] ... unvars[n-1])
 *   where s_i = type of uvars[i-1] and tau = type of x.
 */
typedef struct ef_skolem_s {
  term_t func;
  term_t fapp;
} ef_skolem_t;

extern ef_skolem_t ef_skolem_term(ef_analyzer_t *ef, term_t x, uint32_t n, term_t *uvars);


/*
 * Skolemize existentials in an analyzer
 */
extern term_t ef_analyzer_add_existentials(ef_analyzer_t *ef, bool toplevel, int_hmap_t *parent, term_t t);


#endif /* __EF_SKOLEMIZE_H */
