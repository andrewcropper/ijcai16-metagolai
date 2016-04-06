% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
% clauses: 3 invented predicates: 2
% clauses: 4 invented predicates: 0
% clauses: 4 invented predicates: 1
%time,60.427270
chess(A,B):-map(A,B,chess1).
chess1(A,B):-not_pawn(A),hold(A,B).
chess1(A,B):-mv_forward(A,C),term_gt(A,C),chess1(C,B).
chess1(A,B):-at_rank8(A),hold(A,B).
