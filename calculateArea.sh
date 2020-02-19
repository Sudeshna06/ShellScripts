#function to calculate area of square
squareArea(){
	#input the side value of square on the same line as prompt
	read -p "Enter the side value: " side
	#if the value of the side is less than 0 then return 1 otherwise return 0. Next if the return
	#value is equal to 1 then area cannot be calculated and if the return value is 0 then calculate
	#the area and print it in the terminal
	#awk is used to perform floating point comparison
	if [ $(awk 'BEGIN{print "'$side'"<=0}') -eq 1 ]
	then
		echo "Enter a valid input, area cannot be calculated"
	else
		sArea=`echo "scale=3; $side^2" | bc -l`
		echo "Area of $value is : $sArea sq. units"
	fi
}
#function to calculate area of rectangle
rectangleArea(){
	#input the length and breadth of rectangle on the same line as prompt
	read -p "Enter the length: " length
	read -p "Enter the breadth: " breadth
	#if the value of the length or breadth is less than 0 then return 1 otherwise return 0. Next if
	#the return value is equal to 1 then area cannot be calculated and if the return value is 0 then 		#calculate the area and print it in the terminal
	#awk is used to perform floating point comparison
	if [ $(awk 'BEGIN{print "'$length'"<=0}') -eq 1 -o $(awk 'BEGIN{print "'$breadth'"<=0}') -eq 1 ]
	then
		echo "Enter a valid input, area cannot be calculated"
	else
		rArea=`echo "scale=3; $length*$breadth" | bc`
		echo "Area of $value is: $rArea sq. units"
	fi 
}
#function to calculate area of triangle
triangleArea(){
	#input the base and height of triangle on the same line as prompt
	read -p "Enter the base: " base
	read -p "Enter the height: " height
	#if the value of the base or height is less than 0 then return 1 otherwise return 0. Next if
	#the return value is equal to 1 then area cannot be calculated and if the return value is 0 then 		#calculate the area and print it in the terminal
	#awk is used to perform floating point comparison
	if [ $(awk 'BEGIN{print "'$base'"<=0}') -eq 1 -o $(awk 'BEGIN{print "'$height'"<=0}') -eq 1 ]
	then
		echo "Enter a valid input, area cannot be calculated"
	else
		tArea=`echo "scale=3; (1/2)*$base*$height" | bc`
		echo "Area of $value is: $tArea sq. units"
	fi
}
#function to calculate area of circle
circleArea(){
	#input the radius of circle on the same line as prompt
	read -p "Enter the radius: " radius
	#if the value of the radius is less than 0 then return 1 otherwise return 0. Next if the return
	#value is equal to 1 then area cannot be calculated and if the return value is 0 then calculate
	#the area and print it in the terminal
	#awk is used to perform floating point comparison
	if [ $(awk 'BEGIN{print "'$radius'"<=0}') -eq 1 ]
	then
		echo "Enter a valid input, area cannot be calculated"
	else
		cArea=`echo "scale=3; 3.14*$radius^2" |bc -l`
		echo "Area of $value is: $cArea sq. units"
	fi
}
#menu is generated for the user to choose
select value in Square Rectangle Triangle Circle
do
	case $value in
	#if the user chooses Square
	Square )
		squareArea ;;
	#if the user chooses Rectangle
	Rectangle )
		rectangleArea ;;
	#if the user chooses Triangle
	Triangle )
		triangleArea ;;
	#if the user chooses Circle
	Circle )
		circleArea ;;
	#if the user chooses something else other than the menu then it is not a valid input
	* )
		echo "Enter a valid input" ;;
	esac
done

