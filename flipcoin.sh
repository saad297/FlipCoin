echo "Welcome to the Head and Tails program."

HEADCOUNT=0
TAILCOUNT=0

for (( i=1;i<=50;i++ ))
do

	x=$(($RANDOM%2))

	if [ $x -eq 0 ]
	then
		((HEADCOUNT++))
	else
		((TAILCOUNT++))
	fi
done

echo "Heads appeared $HEADCOUNT times"

echo "Tails appeared $TAILCOUNT times"
