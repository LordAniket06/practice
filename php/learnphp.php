<html>
    
    <head>
        <title>Information Gathered</title>
    </head>

    <body>
        
<? 
echo "<p>Data printed on the screen</p>";            

$fruits = array('apple', 'mango', 'banana', 'guava');
echo 'Apple is ' . $fruits[0];

foreach($fruits as $fruit){
    echo $friend . ', ';
}

$customer = array('apple'=> $username, 'mango'=> $userId)

foreach($customer as $key => $value){
    echo $key . ', ' . $value;
}

$best = $best + $customer;  // Adding the arrays

// Multidimensional array
$cities = array(array('apple', 23, 45), array('mango', 'banana', 'pineapple'));

for($row = 0; $row < 2; $row++) {
    for($column = 0; $column < 3; $column++){
        echo $cities[$row][$column] . ', ';
    }
}

sort($cities), rsort($cities);

$randString = '             Apple           ';

echo "$randString is randstring </br>;
printf ("The randomstring is $randomstring");  // Another way of printing out

echo strtoupper($randomstring);

$partofstring  = substr("Apple is great", 0, 7);

// String comparison just like C/C++

$newString = str_replace("Apple is great", "Apple", $partofstring);


function addNUmbers($num1, $num2){
    return $num1 + $num2;
}

echo "3 + 4 is " . addNUmbers(3, 4);

?>

    </body>

</html>
