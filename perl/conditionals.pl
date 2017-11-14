use strict;
use warnings;
use diagnostics;

use feature 'say';

my $age = 80;
my $salary  = 2000;

if($age >= 90){
    say "You are too old";    
} elsif($salary <= 3000){
    say "You are poor with only ", $salary;    
}

# One-line conditionals
say (($age > 12) ? 'Apples are great':'Mangoes are great');


# Looping !!
my $limit = 10;

for(my $i = 0; $i < $limit; $i++){
    say $i;
    next;
}


# Input from the User
# my $input = <STDIN>;
# say $input;


# Length of string 
my $random_string = "An apple a day, keeps the doctor away";
say "Length of $random_string is ", length $random_string;


# String concatenation
$random_string = $random_string . ', big LOL!';
say $random_string;


# Arrays in Perl
my @array_1 = ('a' .. 'z');

print join(", ", @array_1), "\n";


# Incrementing characters
my $letter = 'c';
say "Next letter is ", ++$letter;
