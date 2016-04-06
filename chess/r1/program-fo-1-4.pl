% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
%time,0.001384
chess(A,B):-chess1(A,C),chess1(C,B).
chess1(A,B):-mv_forward(A,B,p4).
