% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
% clauses: 3 invented predicates: 2
%time,0.011024
chess(A,B):-chess2(A,C),chess2(C,B).
chess2(A,B):-chess1(A,C),chess1(C,B).
chess1(A,B):-mv_forward(A,B,p2).
