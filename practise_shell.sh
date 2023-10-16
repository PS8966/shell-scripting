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