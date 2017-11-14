use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

# Simple Comment
print "Hello World\n";

# Scalars (Variables)
my $name = "Aniket";

# Multiple scalars
my ($age, $profession) = (19, "Programmer");

my $my_info = "$name is a $profession and is $age years old.\n";

print $my_info;

# Eliminating Double quotes
$my_info = qq{$name is a $profession and was $age years old.\n};
print $my_info;


# Multiline strings
my $bunch_of_info = << "EOF";
This is a bunch of information
I would like to extend it to mutiple
lines to be honest!
EOF


# Say inserts newline
say $bunch_of_info;


# Formatted printing
# my $big_number = 123123123;
# printf("%u \n", $big_number + 1)


# Switch values of scalars
my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);
say "$first $second";
