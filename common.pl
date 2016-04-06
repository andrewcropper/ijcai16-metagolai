:- user:call(op(950,fx,'@')).

:- use_module(library(timeout)).
:- use_module(library(random)).
:- use_module(library(system)).
:- use_module(library(lists)).
:- ['funcs'].
:- ['background'].

%% func_test(Atom,PS,G):-
%%   Atom = [P,A,B],
%%   Actual = [P,A,Z],
%%   \+ (metagol:prove_deduce(Actual,PS,G),Z \= B).

func_test(Atom,PS,G):-
  Atom = [P,A,B],
  Actual = [P,A,Z],
  metagol:prove_deduce(Actual,PS,G),
  Z\=B,
  %% writeln(Z),
  %% pprint(G),
  !,false.

 func_test(_,_,_).

set_rand:-
  datime(datime(_,_Month,_Day,_H,Minute,Second)),
  X is Minute * Second,Y=X,Z=X,
  setrand(rand(X,Y,Z)).

train_exs(M):-
  between(1,M,_),
  gen_instance(A,B),
  format('train_ex(~w,~w).\n',[A,B]),
  false.
train_exs(_).

test_pos_exs(M) :-
  between(1,M,_),
  gen_instance(A,B),
  format('test_pos_ex(~w,~w).\n',[A,B]),
  false.
test_pos_exs(_).

test_neg_exs(M) :-
  between(1,M,_),
  gen_neg_instance(A,B),
  format('test_neg_ex(~w,~w).\n',[A,B]),
  false.
test_neg_exs(_).

gen_data(M):-
  set_rand,
  train_exs(M),
  test_pos_exs(20),
  test_neg_exs(20).

learn:-
  max_time(MaxTime),
  target(P),
  findall(Goal,(train_ex(A,B),Goal=..[P,A,B]),Pos),
  get_time(T1),
  time_out(learn(Pos,[],G),MaxTime,Result),
  ((Result = time_out) -> (!,
    Tmp is MaxTime/1000,
    format('%time,~f\n',[Tmp]),false); true),
  get_time(T2),
  Duration is T2-T1,
  format('%time,~f\n',[Duration]),
  pprint(G).

do_test_pos(Goal):-
  (call(Goal) -> writeln(1); writeln(0)).

do_test_neg(Goal):-
  (call(Goal) -> writeln(0); writeln(1)).

run_tests([],_).
run_tests([Goal|T],F):-
  functor(Goal,P,A),
  (current_predicate(P/A) -> call(F,Goal); writeln(0.5)),
  run_tests(T,F).

run_experiment:-
  target(P),
  findall(Goal,(test_pos_ex(A,B),Goal=..[P,A,B]),Xs),!,
  run_tests(Xs,do_test_pos),
  findall(Goal,(test_neg_ex(A,B),Goal=..[P,A,B]),Ys),!,
  run_tests(Ys,do_test_neg).

x :-
  %% set_rand,
  gen_instance(A,B),
  writeln(A),
  writeln(B),
  learn([f(A,B)],[],G),
  pprint(G).