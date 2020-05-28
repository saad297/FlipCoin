
echo "Welcome to the Head and Tails program."

HEADCOUNT=0
TAILCOUNT=0

function get(){

        local x=$1

        if [ $x -eq 0 ]
        then
                ((HEADCOUNT++))
        else
                ((TAILCOUNT++))
        fi
        echo $HEADCOUNT || $TAILCOUNT
}

for (( i=1;i<=100;i++ ))
do

	x=$(($RANDOM%2))
	if [ $x -eq 0 ]
        then
                ((HEADCOUNT++))

		if [ $HEADCOUNT -eq 21 ]
		then	
		
			y=$(($HEADCOUNT - $TAILCOUNT))
			while [ $y -eq 2 ]
			do
				x=$(($RANDOM%2))
        			HEADCOUNT="$( get $x)"
	        	
			done
			echo "Heads won by $y"
			break
		fi
	else

		((TAILCOUNT++))

		if [ $TAILCOUNT -eq 21 ]
                then
                        z=$(($TAILCOUNT - $HEADCOUNT))
			while [ $z -eq 2 ]
                	do
                        	x=$(($RANDOM%2))
                        
                        TAILCOUNT="$( get $x)"
                done
			echo "Tails won by $z"
			break
                fi
	fi
done

echo "Heads : $HEADCOUNT"
echo "Tails : $TAILCOUNT"
