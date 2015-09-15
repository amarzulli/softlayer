#!/usr/local/bin/perl

my $user = "account";
my $pass = "testing!@#";



for ($i=0; $i<=10; $i++) {
	$string = "";
	$string = $user .$i;
	system("useradd -p $pass -m $string");

}
