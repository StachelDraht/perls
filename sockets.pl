use 5.010;

use strict;
use warnings;
use Socket;

my $host = "164.48.7.92";
my $port = "21";
say "#######";
say "##";
say "##";
say "##";
say "##";
say "#######";
say "Input your name";
my $name = <STDIN>;
chomp $name;
my $remote = socket(SOCK, PF_INET, SOCK_STREAM, getprotobyname('tcp'));
my $iaddr = inet_aton($host);
my $paddr = sockaddr_in($port, $iaddr);

connect(SOCK, $paddr);
print "Welcome to server, $name! \n";
#send (SOCK, "GET / HTTP/1.0\n\n", 0);

send(SOCK, "$name", 0);

my $line;
#my @data=<SOCK>;
while ($line = <SOCK>) {
	print "Server: $line \n";
	print "message: ";
	my $send = <STDIN>;
	send(SOCK, "$name: $send", 0);
}




close(SOCK);
#say @data;
