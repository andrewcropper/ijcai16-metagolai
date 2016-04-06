background(([map,[],[],_F]:- [])).
background(([map,[A|As],[B|Bs],F]:- [[F,A,B],[map,As,Bs,F]])).

background(([fold,[],Acc,Acc,_F]:- [])).
background(([fold,[A|As],B,Acc1,F]:- [[F,Acc1,A,Acc2],[fold,As,B,Acc2,F]])).

background(([foldback,[],Acc,Acc,_F]:- [])).
background(([foldback,[A|As],Acc2,Acc1,F]:- [[foldback,As,Acc3,Acc1,F],[F,Acc3,A,Acc2]])).

background(([filter,[],[],_F]:- [])).
background(([filter,[A|As],[A|Bs],F]:- [[F,A],[filter,As,Bs,F]])).
background(([filter,[_|As],[B|Bs],F]:- [[filter,As,[B|Bs],F]])). % A\=B. needed?

background(([reduce,[A|As],B,F]:- [[fold,As,B,A,F]])).

background(([reduceback,[A],A,_F]:- [])).
background(([reduceback,[A|As],B,F]:- [[reduceback,As,C,F],[F,C,A,B]])).

%% reduceback([Last],Last,_F).
%% reduceback([A|As],B,F):-
%%   reduceback(As,C,F),
%%   call(F,C,A,B).

background(([until,A,B,Cond,F]:- [[F,A,B],[Cond,B]])).
background(([until,A,B,Cond,F]:- [[F,A,C],@term_gt(A,C),[until,C,B,Cond,F]])).

background(([ifthenelse,A,B,Cond,Then,_]:- [[Cond,A],[Then,A,B]])).
background(([ifthenelse,A,B,Cond,_,Else]:- [[not,Cond,A],[Else,A,B]])).