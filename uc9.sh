echo "-----------Welcome to sorting problems-------------"
#uc1
read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c

echo "UC1: Values of a=$a, b=$b and c=$c"

#uc2
uc2=$((a+b*c))
echo "UC2: is $uc2"

#uc3
uc3=$((a*b+c))
echo "UC3: is $uc3"

#uc4
uc4=$((c+a/b))
echo "UC4: is $uc4"

#uc5
uc5=$((a%b+c))
echo "UC5: is $uc5"

#uc6
echo "-----------------------------------------"
declare -A store
store[k1]=$uc2
store[k2]=$uc3
store[k3]=$uc4
store[k4]=$uc5

echo "Dictionary data: ${store[@]}"

echo "-----------------------------------------"
#uc7
array=("$uc2" "$uc3" "$uc4" "$uc5")
echo "Array data: ${array[*]}"

#uc8
echo "-----------------------------------------"
echo "Array data: ${array[*]}"

for ((i=0; i<4; i++))
do
        for((j=0; j<4-i-1; j++))
        do
                if [ ${array[j]} -lt ${array[$((j+1))]} ]
                then
                        temp=${array[j]}
                        array[$j]=${array[$((j+1))]}
                        array[$((j+1))]=$temp
                fi
        done
done
echo "Array in descending order: ${array[*]}"

#uc9
echo "-----------------------------------------"
echo "Array data: ${array[*]}"

for ((i=0; i<4; i++))
do
	for((j=0; j<4-i-1; j++))
	do
		if [ ${array[j]} -gt ${array[$((j+1))]} ]
		then
			temp=${array[j]}
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
echo "Array in ascending order: ${array[*]}"
