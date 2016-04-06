% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
%time,0.007481
chess(A,B):-map(A,B,chess1).
chess1(A,B):-not_pawn(A),hold(A,B).
chess1(A,B):-until(A,B,at_rank8,mv_forward).
