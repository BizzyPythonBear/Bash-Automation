read -p "What is the first number you would you like to add, subtract, multiply, or divide? " num1
read -p "Second number: " num2
read -p "Would you like to add, subtract, multiply, or divide? e.g. (+, -, *, /) " operator

if [ "$operator" = "+" ]; then
    sum=$(( $num1 + $num2 ))
    echo "$num1 + $num2 = $sum"
elif [ "$operator" = "-" ]; then
    diff=$(( $num1 - $num2 ))
    echo "$num1 - $num2 = $diff"
elif [ "$operator" = "*" ]; then
    product=$(( $num1 * $num2 ))
    echo "$num1 * $num2 = $product"
elif [ "$operator" = "/" ]; then
    dividend=$(( $num1 / $num2 ))
    echo "$num1 / $num2 = $dividend"
fi