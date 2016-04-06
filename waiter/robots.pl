world_check(X,A):-
  nonvar(A),
  member(X,A).

world_replace(X,Y,A,B):-
  nonvar(A),
  append(Prefix,[X|Suffix],A),
  append(Prefix,[Y|Suffix],B).

value_at(A,Index,Value):-
  world_check(pos(Index,Value),A).

value_replace_at(A,B,Index,Value) :-
  world_replace(pos(Index,_),pos(Index,Value),A,B).

mv_right(A,B):-
  world_check(robot_pos(X1),A),
  world_check(end_pos(EndPos),A),
  X2 is X1+1,
  X2 =< EndPos,
  world_replace(robot_pos(X1),robot_pos(X2),A,B).

mv_left(A,B):-
  world_check(robot_pos(X1),A),
  %% start_pos(A,StartPos),
  X2 is X1-1,
  X2 >= 0,
  world_replace(robot_pos(X1),robot_pos(X2),A,B).

grab(A,B):-
  world_check(holding(none),A),
  world_check(robot_pos(Pos),A),
  value_at(A,Pos,Value),
  Value \= none,
  value_replace_at(A,C,Pos,none),
  world_replace(holding(none),holding(Value),C,B).

drop(A,B):-
  world_check(holding(X),A),
  X \= none,
  world_check(robot_pos(Pos),A),
  value_at(A,Pos,none),
  value_replace_at(A,C,Pos,X),
  world_replace(holding(X),holding(none),C,B).

at_target(A):-
  world_check(target(X),A),
  world_check(pos(P,X),A),
  world_check(robot_pos(P),A).

at_start(A):-
  world_check(robot_pos(0),A).

not_at_target(A):-
  \+ at_target(A).

not_at_start(A):-
  \+ at_start(A).