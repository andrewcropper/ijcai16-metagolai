% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
%time,0.003455
chess(A,B):-map(A,B,chess1).
chess1(A,B):-not_pawn(A),hold(A,B).
chess1(A,B):-is_pawn(A),mv_forward(A,B).
