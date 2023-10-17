echo "Hello"
read NAME
read SURNAME
echo "I am $NAME $SURNAME"
unset SURNAME # unsetting the variable name 
echo "I am $NAME $SURNAME"
echo $$  #check for pid 
echo $?  #check for last command success

my_array=(1 2 3 4 "pushpendra") #declaring an array
echo ${my_array[@]}  #print all items in an array
echo -n "Enter a number: "
read num
 
# store the original number
original_num=$num
 
# reverse the number
rev=0
while [ $num -gt 0 ]
do
    # get the remainder of the number
    remainder=$(($num % 10))
    
    # multiply reverse by 10 then add the remainder
    rev=$((($rev * 10) + $remainder))
    
    # divide the number by 10
    num=$(($num / 10))
done
 
# check if the number is a palindrome
if [ $original_num -eq $rev ];
then
    echo "$original_num is a palindrome number."
else
    echo "$original_num is not a palindrome number."
fi
