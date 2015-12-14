package Letter;

require Exporter;
@ISA = (@Exporter);


# This module just provide a simple example of generating a letter.

@EXPORT = qw(Date,
				To,
				ClaimMoney,
				FinishDem,
	);

sub Letter::Date{
		$date = 'date';
		print "\nToday's date is $date";
	
}
sub Letter::To{
	local($name) = shift;
	local($subject) = shift;
	print "\n To: $name";
	print "\n fm: Mark";
	print "\n dt: ", `date`;
	print "\n Re: $subject";
	print "\n\n";
	print "\n===============\n";
}

sub Letter::ClaimMoney{
	print "\nHey, You owe me money. Get your act together";
	print "\n Can we settle this amount as soon as possible";
}

sub Letter::FinishDem{
	print "\n\n Thanks for your support.\n";
}
1;