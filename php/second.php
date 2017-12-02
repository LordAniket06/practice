<?
$age = 12;
$salary = 3400;
$weight = 50;

if($age>=10){
  if($salary>4000){
     echo "Your salary is $salary <br>";
    }
  elseif($weight>30){
     echo "Congrats! $salary <br>";
    }
  else {
     echo "Sorry you're poor! <br>";
    }
}


$apple = 12;

switch($apple){
  case 12:
  echo "12 Apples "; break;
  
  case 13:
  echo "13 Apples "; break;
  
  case 14:
  echo "14 apples "; break;
}

for($n=1; $n<=4; $n++){
  for($m=1; $m<=$n; $m++){
     echo "$n $m <br>";
    }
}

$heroes = array("Iron", "Mongo", "Canada");

foreach($heroes as $hero){
  echo "$hero <br>";
}
?>
