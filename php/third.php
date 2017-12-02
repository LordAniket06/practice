<?
$apple = 0;

while($apple<10):
 echo "$apple <br>";
 $apple++;

endwhile;

function sayHello($name){
 echo "Hello $name <br>";
}

sayHello("Apple");


$salary = array(200=>"Good", 300=>"Better", 400=>"Best");
echo $salary['200'];

$fruits = array("apple"=>"A", "mango"=>"B", "banana"=>"C");
print_r(array_change_key_case($fruits, CASE_UPPER));
echo count($fruits);
?>
