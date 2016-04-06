% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
%time,0.001071
chess(A,B):-map(A,B,chess1).
chess1(A,B):-until(A,B,at_rank8,mv_forward).
