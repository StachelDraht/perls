use strict;
use warnings;
use Data::Dumper;

my %hash = ('beer'=> 'dark', 'language'=>'strange');
#my $name = "Maksim";
#print Dumper(%hash);
while(my ($key, $value) = each %hash) {
	print "$key => $value \n";
}