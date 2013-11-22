use strict;
use warnings;
use Socket;

my $host = "eeelhd";
my $port = "80";

socket(SOCK, PF_INET, SOCK_STREAM, getprotobyname('tcp'));

my $iaddr = inet_aton($host);
my $paddr = sockaddr_in($port, $iaddr);

connect(SOCK, $paddr);
send (SOCK, "GET / HTTP/1.0\n\n", 0);

my @data=<SOCK>;

close(SOCK);

print @data;
