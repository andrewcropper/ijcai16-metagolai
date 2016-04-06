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
%time,14.192920
robot(A,B):-until(A,B,at_end,robot3).
robot3(A,B):-robot2(A,C),move_right(C,B).
robot2(A,B):-turn_cup_over(A,C),robot1(C,B).
robot1(A,B):-ifthenelse(A,B,wants_tea,pour_tea,pour_coffee).
