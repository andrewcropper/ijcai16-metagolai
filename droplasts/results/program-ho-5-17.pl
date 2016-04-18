% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
% clauses: 3 invented predicates: 2
% clauses: 4 invented predicates: 0
% clauses: 4 invented predicates: 1
% clauses: 4 invented predicates: 2
% clauses: 4 invented predicates: 3
%time,0.433657
dlasts(A,B):-map(A,B,dlasts3).
dlasts3(A,B):-dlasts2(A,C),dlasts1(C,B).
dlasts2(A,B):-dlasts1(A,C),tail(C,B).
dlasts1(A,B):-reduceback(A,B,concat).
