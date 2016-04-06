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
% clauses: 5 invented predicates: 0
% clauses: 5 invented predicates: 1
% clauses: 5 invented predicates: 2
% clauses: 5 invented predicates: 3
% clauses: 5 invented predicates: 4
% clauses: 6 invented predicates: 0
% clauses: 6 invented predicates: 1
% clauses: 6 invented predicates: 2
% clauses: 6 invented predicates: 3
%time,260.087664
robot(A,B):-robot3(A,C),term_gt(A,C),robot(C,B).
robot3(A,B):-robot2(A,C),move_right(C,B).
robot2(A,B):-turn_cup_over(A,C),robot1(C,B).
robot1(A,B):-wants_coffee(A),pour_coffee(A,B).
robot(A,B):-robot3(A,B),at_end(B).
robot1(A,B):-wants_tea(A),pour_tea(A,B).
