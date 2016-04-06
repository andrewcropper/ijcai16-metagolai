map([],[],_F).
map([A|As],[B|Bs],F):-
  call(F,A,B),
  map(As,Bs,F).

fold([],Acc,Acc,_F).
fold([A|As],B,Acc1,F):-
  call(F,Acc1,A,Acc2),
  fold(As,B,Acc2,F).

foldback([],Acc,Acc,_F).
foldback([A|As],Acc2,Acc1,F):-
  foldback(As,Acc3,Acc1,F),
  call(F,Acc3,A,Acc2).

filter([],[],_F).
filter([A|As],B,F):-
  (call(F,A) -> B=[A|Out]; B=Out),
  filter(As,Out,F).

reduce([A|As],B,F):-
  fold(As,B,A,F).

reduceback([Last],Last,_F).
reduceback([A|As],B,F):-
  reduceback(As,C,F),
  call(F,C,A,B).

while(A,B,Cond,Func):-
  (call(Cond,A) ->
    (call(Func,A,C),while(C,B,Cond,Func));
    (B=A)).

until(A,B,Cond,Func):-
  call(Func,A,C),
  (call(Cond,C) -> B=C; until(C,B,Cond,Func)).

ifthenelse(A,B,Cond,Then,Else):-
  (call(Cond,A) -> call(Then,A,B); call(Else,A,B)).
