use 5.010;
use strict;
use warnings;

say "Input first inetger";
my $firstint = <STDIN>;
say "Input second integer";
my $secondint = <STDIN>;
#chomp $firstint;
#chomp $secondint;
say "Result ", $firstint+$secondint;