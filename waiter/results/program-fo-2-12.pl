% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
% clauses: 3 invented predicates: 2
% clauses: 4 invented predicates: 0
% clauses: 4 invented predicates: 1
% clauses: 4 invented predicates: 2
%time,0.224119
robot(A,B):-robot2(A,C),term_gt(A,C),robot(C,B).
robot2(A,B):-robot1(A,C),move_right(C,B).
robot1(A,B):-turn_cup_over(A,C),pour_coffee(C,B).
robot(A,B):-robot2(A,B),at_end(B).
