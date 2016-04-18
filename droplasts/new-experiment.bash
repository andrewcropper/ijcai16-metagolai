ename="results"

trials=20
instances=5

rm -rf $ename
mkdir $ename

# GEN INPUT DATA
for k in `seq $trials`
do
  for m in `seq $instances`
  do
    sleep 1
    yap << % >> "$ename/input-$m-$k.pl"
    ['experiment'].
    gen_data($m).
%
  done
done

# # LEARN PROGRAM METAGOL_AI (HIGHER-ORDER)
for k in `seq $trials`
do
  for m in `seq $instances`
  do
    echo $k $m
    yap << % >> "$ename/program-ho-$m-$k.pl"
    ['$ename/input-$m-$k'].
    ['../metagol_ai'].
    [experiment].
    learn.
%
  done
done

# LEARN PROGRAM METAGOL (FIRST-ORDER)
for k in `seq $trials`
do
  for m in `seq $instances`
  do
    echo $k $m
    yap << % >> "$ename/program-fo-$m-$k.pl"
    ['$ename/input-$m-$k'].
    ['../metagol'].
    [experiment].
    learn.
%
  done
done

# # # RUN TEST FO
for k in `seq $trials`
do
  for m in `seq $instances`
  do
    yap << % >> "$ename/output-fo-$m-$k.pl"
    ['$ename/program-fo-$m-$k'].
    ['$ename/input-$m-$k'].
    ['experiment'].
    run_experiment.
%
  done
done

# # # RUN TEST HO
for k in `seq $trials`
do
  for m in `seq $instances`
  do
    yap << % >> "$ename/output-ho-$m-$k.pl"
    ['$ename/program-ho-$m-$k'].
    ['$ename/input-$m-$k'].
    ['experiment'].
    run_experiment.
%
  done
done