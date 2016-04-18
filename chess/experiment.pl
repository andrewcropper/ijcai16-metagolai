:- ['../common'].

%% ---------- GEN TRAINING DATA ----------

final_state(A,B):-
  findall((Type,Id,X/Z),(
      member((Type,Id,X/Y),A),
      (Type == p -> Z=8; Z=Y)),B).

pieces([(k,k1),(q,q1),(b,b1),(b,b2),(n,n1),(n,n2),(r,r1),(r,r2),(p,p1),(p,p2),(p,p3),(p,p4),(p,p5),(p,p6),(p,p7),(p,p8)]).

rand_pieces(SubsetPieces):-
  random(1,16,NumPieces),
  randset(NumPieces,16,Subset),
  pieces(Pieces),
  findall(X,(member(Index,Subset),nth1(Index,Pieces,X)),SubsetPieces).

all_positions(AllPositions):-
  findall(File/Rank,(between(1,8,Rank),between(1,8,File)),AllPositions).

rand_positions(Doubles,Triples):-
  all_positions(AllPositions),
  length(AllPositions,NumAllPositions),
  length(Doubles,K),
  randset(K,NumAllPositions,SubsetPositionsIndex),
  findall((Type,Id,Pos),
    (
      nth1(Index,SubsetPositionsIndex,PosIndex),
      nth1(PosIndex,AllPositions,Pos),
      nth1(Index,Doubles,(Type,Id))
    ), Triples).

gen_instance(A,B):-
  rand_pieces(Subset),
  rand_positions(Subset,A),
  final_state(A,B).

gen_neg_instance(A,B):-
  rand_pieces(Subset),
  rand_positions(Subset,A),
  rand_positions(Subset,B),
  \+ final_state(A,B).

%% ---------- METAGOL SETTINGS ----------

target(chess).
%% max_time(320000). % ms
max_time(600000). % 10 mins
%% max_time(1200000). % 20 mins
metagol:functional.

prim(mv_forward/2).
prim(mv_forward/3).
prim(at_rank8/1).
prim(is_pawn/1).
prim(not_pawn/1).
prim(hold/2).


%% ---------- COMPILED BACKGROUND KNOWLEDGE ----------

at_rank8((_,_,_/8)).
is_pawn((p,_,_)).
not_pawn(A):- \+is_pawn(A).
empty([]).
hold(A,A).

object(p1).
object(p2).
object(p3).
object(p4).
object(p5).
object(p6).
object(p7).
object(p8).

mv_forward(A,B,Id):-
  append(Before,[(Type,Id,X/Y1)|After],A),
  Y1 < 8,Y2 is Y1+1,
  append(Before,[(Type,Id,X/Y2)|After],B).

mv_forward((Type,Id,X/Y1),(Type,Id,X/Y2)):-
  Y1 < 8,
  Y2 is Y1+1.

term_gt((p,Id,_/Y1),(p,Id,_/Y2)):-
  Y2 > Y1,!.

term_gt(A,B):-
  member((p,Id,_/Y1),A),
  member((p,Id,_/Y2),B),
  Y2 > Y1.

%% ---------- METARULES ----------

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
metarule(curry1,[P,Q,C],([P,A,B]:-[[Q,A,B,C]]),PS):-
  member(Q/3,PS),
  object(C).
metarule(reduceback,[P,Q,F],([P,A,B]:-[[Q,A,B,F]]),PS):-
  member(Q,[reduceback]),
  member(F/3,PS).
metarule(ifthenelse,[P,Q,Cond,Then,Else],([P,A,B]:-[[Q,A,B,Cond,Then,Else]]),PS):-
  member(Q,[ifthenelse]),
  member(Cond/1,PS),
  member(Then/2,PS),
  member(Else/2,PS).