#!/usr/bin/perl

# Some of the things you can do with arrays using functions.

# Functions of array
#
sub printLine {
	print "\n"; print "=" x 60; print "\n";
}

$quote = 'Listen to me slowely';
@words = split(' ',$quote);

# Using the for operator on the list
#

&printLine;
print "The quote from Sam Goldwyn: $quote";
&printLine;
print "The words \@words = ";
for $i (@words){
	print "[$i] ";
}

#
# Chop
#

&printLine;
chop(@words);
print "The chopped words \@words = ";
for $i (@words){
	print "[$]";
}

print "\n......Restore";
# Restore!
@words = split(' ',$quote);

# You can add and delete items in an array using push(@ARRAY), pop(@ARRAY).

# Using PUSH
# Call to add items to list.
@temp = push(@words, "please"); # pushinf 'please' at the back of the array.
&printLine;
print "After pushing \@words = ";
for $i (@words){
	print "[$i]";
}

# Using POP
# pop removes last item from the list and retured it as scalar

@temp = pop(@words); # Take the 'please' off
@temp = pop(@words); # Take the 'slowely' off
&printLine;
print "After popping twice \@words = ";
for $i (@words){
	print "[$i]";
}

# SHIFT from the front of the array
# The shift(ARRAY) returns the first element of an array. The size of the array decrease by 1.

$temp = shift @words;
&printLine;
print "shift $temp off, \@words =";
for $i (@words){
	print "[$i]";
}

# Restore words
#

@words = ();
@words = split(' ',$quote);
&printLine;
print "Restore words";

# SPLICE FUCTION
# splice function removes items from array.

@two = splice(@words,1,2);
print "\nWords after splice =";
for $i (@words){
	print "[$i]";
}
print "Retruned from splice";
for $i (@two){
	print "[$i]";
}
&printLine;

#
# using the join function
#
$joined = join(':', @words, @two);
print "Retruned from join = $joined";
&printLine;



# OUTPUT
============================================================
The quote from Sam Goldwyn: Listen to me slowely
============================================================
The words @words = [Listen] [to] [me] [slowely] 
============================================================
The chopped words @words = [5.018002[5.018002[5.018002[5.018002
......Restore
============================================================
After pushing @words = [Listen][to][me][slowely][please]
============================================================
After popping twice @words = [Listen][to][me]
============================================================
shift Listen off, @words =[to][me]
============================================================
Restore words
Words after splice =[Listen][slowely]Retruned from splice[to][me]
============================================================
Retruned from join = Listen:slowely:to:me
============================================================