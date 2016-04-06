ename="results"

trials=20
instances=5

echo 'accuracies'
echo 'ho'
python ../results.py $ename $instances $trials ho accuracies
echo 'fo'
python ../results.py $ename $instances $trials fo accuracies
echo 'times'
echo 'ho'
python ../results.py $ename $instances $trials ho times
echo 'fo'
python ../results.py $ename $instances $trials fo times