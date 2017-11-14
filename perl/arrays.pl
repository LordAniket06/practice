use strict;
use warnings;
use diagnostics;

use feature 'say';

my @primes = (2,3,5,7,11,13,17);

$primes[4] = "Cakes";

say @primes;

# Looping through the array
for my $prime (@primes){
    say $prime
}


# Cool shortcut for looping
for (@primes){
    say $_;
}


# Slicing?
my @sliced = @primes[0, 4];
say @sliced;


# Hashes
my %employee = (
    "Sue"=>35,
    "Apple"=>34
);

printf("Sue is %d and Apple is %d\n", $employee{"Sue"}, $employee{"Apple"});

