:- ['../common'].
:- [robots].

%% ---------- GEN TRAINING DATA ----------

gen_instance(A,B):-
  max_size(MaxSize),
  random(2,MaxSize,SpaceSize),
  findall(place(Position,Preference,cup(down,empty)),
    (
      between(1,SpaceSize,Position),
      random(0,2,Bool),
      (Bool == 1 -> Preference=tea; Preference=coffee)
    ),InitialPlaces),

  findall(place(Position,Preference,cup(up,Preference)),
    (
      member(place(Position,Preference,_),InitialPlaces)
    ),FinalPlaces),
  Top is SpaceSize+1,
  A=[robot_pos(1),end_pos(Top),places(InitialPlaces)],
  B=[robot_pos(Top),end_pos(Top),places(FinalPlaces)].

gen_neg_instance(A,B):-
  gen_instance(A,X),
  member(end_pos(SpaceSize),X),
  random(1,SpaceSize,SubsetSize),
  randset(SubsetSize,SpaceSize,Subset),

  member(places(OldPlaces),X),

  findall(place(Position,OldPreference,cup(Direction,NewPreference)),
    (
      member(place(Position,OldPreference,cup(Direction,OldPreference)),OldPlaces),
      (member(Position,Subset) -> (OldPreference=tea -> NewPreference=coffee; NewPreference=tea)
        ; NewPreference=OldPreference)
    ),NewPlaces),
  B=[robot_pos(SpaceSize),end_pos(SpaceSize),places(NewPlaces)],!.

%% ---------- METAGOL SETTINGS ----------

prim(wants_tea/1).
prim(wants_coffee/1).
prim(at_end/1).
prim(pour_tea/2).
prim(pour_coffee/2).
prim(turn_cup_over/2).
prim(move_right/2).

metagol:functional.
metagol:max_clauses(10).

target(robot).
max_time(600000). % 10 mins
%% max_time(1200000). % 20 mins

%% ---------- COMPILED BACKGROUND KNOWLEDGE ----------

term_gt(A,B):-
  world_check(robot_pos(X),A),
  world_check(robot_pos(Y),B),
  X < Y.

max_size(10).

at_end(A):-
  member(robot_pos(X),A),
  member(end_pos(X),A).

wants_tea(A):-
  world_check(robot_pos(RobotPos),A),
  world_check(places(Places),A),
  member(place(RobotPos,tea,_),Places).

wants_coffee(A):-
  world_check(robot_pos(RobotPos),A),
  world_check(places(Places),A),
  member(place(RobotPos,coffee,_),Places).

move_right(A,B):- mv_right(A,B).

turn_cup_over(A,B):-
  world_check(robot_pos(RobotPos),A),
  world_check(places(OldPlaces),A),
  world_check(place(RobotPos,Preference,cup(down,OldState)),OldPlaces),
  world_replace(
    place(RobotPos,Preference,cup(down,OldState)),
    place(RobotPos,Preference,cup(up,OldState)),
    OldPlaces,NewPlaces),
  world_replace(places(OldPlaces),places(NewPlaces),A,B).

pour_tea(A,B):-
  world_check(robot_pos(RobotPos),A),
  world_check(places(OldPlaces),A),
  world_check(place(RobotPos,Preference,cup(up,empty)),OldPlaces),
  world_replace(
    place(RobotPos,Preference,cup(up,empty)),
    place(RobotPos,Preference,cup(up,tea)),
    OldPlaces,NewPlaces),
  world_replace(places(OldPlaces),places(NewPlaces),A,B).

pour_coffee(A,B):-
  world_check(robot_pos(RobotPos),A),
  world_check(places(OldPlaces),A),
  world_check(place(RobotPos,Preference,cup(up,empty)),OldPlaces),
  world_replace(
    place(RobotPos,Preference,cup(up,empty)),
    place(RobotPos,Preference,cup(up,coffee)),
    OldPlaces,NewPlaces),
  world_replace(places(OldPlaces),places(NewPlaces),A,B).

%% ---------- METARULES ----------

%% :- dynamic(term_gt/2).
%% :- dynamic(object/1).

%% f(A,B):-until(A,B,at_end,f3).
%% f3(A,B):-f2(A,C),move_right(C,B).
%% f2(A,B):-turn_cup_over(A,C),f1(C,B).
%% f1(A,B):-ifthenelse(A,B,wants_tea,pour_tea,pour_coffee).

%% metarule(precon,[P,Q,R],([P,A,B]:-[[Q,A],[R,A,B]])).
%% metarule(postcon,[P,Q,R],([P,A,B]:-[[Q,A,B],[R,B]])).
%% metarule(ident,[P,Q],([P,A,B]:-[[Q,A,B]])).
metarule(chain,[P,Q,R],([P,A,B]:-[[Q,A,C],[R,C,B]])).
%% metarule(tailrec,[P,Q],([P,A,B]:-[[Q,A,C],@term_gt(A,C),[P,C,B]]),PS):-
 %% member(Q/2,PS).
%% metarule(map,[P,Q,F],([P,A,B]:-[[Q,A,B,F]]),PS):-
%%   member(Q,[map]),
%%   member(F/2,PS).
metarule(until,[P,Q,Cond,F],([P,A,B]:-[[Q,A,B,Cond,F]]),PS):-
  member(Q,[until]),
  member(Cond/1,PS),
  member(F/2,PS).
%% metarule(curry1,[P,Q,C],([P,A,B]:-[[Q,A,B,C]]),PS):-
%%   member(Q/3,PS),
%%   object(C).
%% metarule(reduceback,[P,Q,F],([P,A,B]:-[[Q,A,B,F]]),PS):-
%%   member(Q,[reduceback]),
%%   member(F/3,PS).
metarule(ifthenelse,[P,Q,Cond,Then,Else],([P,A,B]:-[[Q,A,B,Cond,Then,Else]]),PS):-
  member(Q,[ifthenelse]),
  member(Cond/1,PS),
  member(Then/2,PS),
  member(Else/2,PS).