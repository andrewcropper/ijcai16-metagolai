% clauses: 1 invented predicates: 0
% clauses: 2 invented predicates: 0
% clauses: 2 invented predicates: 1
% clauses: 3 invented predicates: 0
% clauses: 3 invented predicates: 1
% clauses: 3 invented predicates: 2
%time,0.092296
robot(A,B):-until(A,B,at_end,robot2).
robot2(A,B):-robot1(A,C),move_right(C,B).
robot1(A,B):-turn_cup_over(A,C),pour_coffee(C,B).
