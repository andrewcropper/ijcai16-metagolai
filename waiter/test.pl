:-['../metagol_ai'].
:-['experiment'].

f(A,B):-until(A,B,at_end,f3).
f3(A,B):-f2(A,C),move_right(C,B).
f2(A,B):-turn_cup_over(A,C),f1(C,B).
f1(A,B):-ifthenelse(A,B,wants_tea,pour_tea,pour_coffee).

%% f(A,B):-do_until(A,B,at_end,f3).
%% f3(A,B):-f2(A,C),move_right(C,B).
%% f2(A,B):-turn_cup_over(A,C),f1(C,B).
%% f1(A,B):- wants_tea(A), pour_tea(A,B).
%% f1(A,B):- wants_coffee(A), pour_coffee(A,B).

%% f1(A,B):-ifthenelse(A,B,wants_tea,pour_tea,pour_coffee).
%% f(A,_):- writeln(A), false.
%% f(A,B):-f2(A,B),at_end(B).
%% f(A,B):-f3(A,C),term_gt(A,C),f(C,B).
%% f3(A,B):-f2(A,C),move_right(C,B).
%% f2(A,B):-turn_cup_over(A,C),f1(C,B).
%% f1(A,B):- wants_tea(A), pour_tea(A,B).
%% f1(A,B):- wants_coffee(A), pour_coffee(A,B).

a:-
  gen_instance(A,B),
  f(A,C).