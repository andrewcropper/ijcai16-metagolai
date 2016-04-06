% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
% clauses: 3 invented predicates: 2
%time,0.026310
robot(A,B):-robot2(A,C),robot2(C,B).
robot2(A,B):-robot1(A,C),move_right(C,B).
robot1(A,B):-turn_cup_over(A,C),pour_tea(C,B).
