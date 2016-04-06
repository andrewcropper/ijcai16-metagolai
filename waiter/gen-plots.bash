ename="results"

trials=20
instances=5

echo 'accuracies higher-order learning (Metagol_AI)'
python ../results.py $ename $instances $trials ho accuracies
# echo 'fo'
echo 'accuracies first-order learning (Metagol)'
python ../results.py $ename $instances $trials fo accuracies
# echo 'times'
# echo 'ho'
echo 'times higher-order learning (Metagol_AI)'
python ../results.py $ename $instances $trials ho times
# echo 'fo'
echo 'times first-order learning (Metagol)'
python ../results.py $ename $instances $trials fo times