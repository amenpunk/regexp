open(ARCHIVO, "<", "mails.txt");

my $regex = qr/[A-Z0-9._-]+\@[A-Z0-9]+\.[A-Z]{2,4}/i;

my $emails;
while(<ARCHIVO>){
	while(/($regex)/g)
		{
			$emails .= $1 . "\n";
			print "Encotrado: " . $1 . "\n";
		}
}

close ARCHIVO;
open(ARCHIVO, ">>", "dbemail.txt");
print ARCHIVO $emails;
close ARCHIVO;
