:- ['../common'].

%% ---------- GEN TRAINING DATA ----------

gen_droplast([],[]).
gen_droplast([A|T],[B|Out]):-
  gen_droplast_aux(A,B),
  gen_droplast(T,Out).

gen_droplast_aux([_],[]).
gen_droplast_aux([H|T],[H|Out]):-
  gen_droplast_aux(T,Out).

gen_instance(Input,Output):-
  random(2,10,NumRows),
  findall(SubList,(
    between(2,NumRows,_),
    random(3,10,NumColumns),
    randseq(NumColumns,NumColumns,SubList)),Input),
  gen_droplast(Input,Output).

tmp(1,1):-!.
tmp(X,Y):-random(1,X,Y).

gen_neg_instance(Input,Output):-
  gen_instance(Input,_),!,
  length(Input,NumRows),
  MaxChange is NumRows-1,
  tmp(MaxChange,NumToChange),
  randset(NumToChange,NumRows,IndexesToChange),
  findall(Outlist,(
    nth1(Index,Input,Sublist),
    (member(Index,IndexesToChange) -> gen_droplast_aux(Sublist,Outlist); Outlist=Sublist)
    ),Output).

%% ---------- METAGOL SETTINGS ----------

prim(empty/1).
prim(concat/3).
prim(tail/2).

%% metagol:functional.
max_time(600000). % 10 mins
target(dlasts).

%% ---------- COMPILED BACKGROUND KNOWLEDGE ----------

concat([H|T],B,C):-!,append([H|T],[B],C).
concat(A,B,C):-append([A],[B],C).
head([H|_],H).
tail([_|T],T).
equal(A,A).
empty([]).

%% ---------- METARULES ----------

:- dynamic(term_gt/2).

metarule(precon,[P,Q,R],([P,A,B]:-[[Q,A],[R,A,B]])).
metarule(postcon,[P,Q,R],([P,A,B]:-[[Q,A,B],[R,B]])).
metarule(ident,[P,Q],([P,A,B]:-[[Q,A,B]])).
metarule(chain,[P,Q,R],([P,A,B]:-[[Q,A,C],[R,C,B]])).
metarule(tailrec,[P,Q],([P,A,B]:-[[Q,A,C],@term_gt(A,C),[P,C,B]]),PS):-
 member(Q/2,PS).
metarule(map,[P,Q,F],([P,A,B]:-[[Q,A,B,F]]),PS):-
  member(Q,[map]),
  member(F/2,PS).
metarule(until,[P,Q,Cond,F],([P,A,B]:-[[Q,A,B,Cond,F]]),PS):-
  member(Q,[until]),
  member(Cond/1,PS),
  member(F/2,PS).
metarule(reduceback,[P,Q,F],([P,A,B]:-[[Q,A,B,F]]),PS):-
  member(Q,[reduceback]),
  member(F/3,PS).
metarule(ifthenelse,[P,Q,Cond,Then,Else],([P,A,B]:-[[Q,A,B,Cond,Then,Else]]),PS):-
  member(Q,[ifthenelse]),
  member(Cond/1,PS),
  member(Then/2,PS),
  member(Else/2,PS).