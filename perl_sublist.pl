#!/usr/bin/perl

# you can create other lists from lists.
$a = 'TCS';
$b = 'FCS';
$c = 'LCS';

@words = ('bin', 'sin', 'tin'); # Assign  three values to  @words array

$count = @words; # get the count

# using the for operator on the list

for $i (@words){
	print "[$i]";
}

# print 40 equal signs
print "\n";
print "=" x 40;
print "\n";

# concatenating two lists together
@more = ($a, @words, $b, $c); # @more array is created by placing together $a, all the items of array @words and followed by $b, $c
print "\n Putting a list together";
$j = 0;
for $i (@more){
	print "\n \$more[$j] = is $i";
	$j++;
}

print "\n";

@more = (@words,($a, $b, $c)); # another way of placing two list together
print "\nPutting list together";
$j =0;
for $i (@more){
	print "\n \$more[$j] = is [$i]";
	$j++;
}
print "\n";

$fourth = ($a x 4);
print "$fourth\n";

# To remove an item from array, use delete command on an array. eg:
# delete $more[2];


#output
#[bin][sin][tin]
========================================

 Putting a list together
 $more[0] = is TCS
 $more[1] = is bin
 $more[2] = is sin
 $more[3] = is tin
 $more[4] = is FCS
 $more[5] = is LCS

Putting list together
 $more[0] = is [bin]
 $more[1] = is [sin]
 $more[2] = is [tin]
 $more[3] = is [TCS]
 $more[4] = is [FCS]
 $more[5] = is [LCS]
TCSTCSTCSTCS
