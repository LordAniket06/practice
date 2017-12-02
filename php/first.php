<?
$a = "Apple";
$$a = 200;

echo "$a ";
echo $Apple . " ";
echo "Reference of $a is: " . "$Apple ";

$animal = "Cat";
${$animal} = "Dog";
${${$animal}} = "Monkey";

echo "$animal $Cat $Dog <br>";

// Constant definitions
define("MESSAGE", "Apple");
echo MESSAGE . " ";

define("MGS", "Mango", true);
echo msg . " ";

// Const keyword can also be used to define constants
const message = "Random message";
echo message;

echo __FILE__ . "<br>";
?>
