#!/usr/bin/perl

# When working with arrays in perl, you are really working with lists. You can add or remove items in front/back
# of the list.Items in the middle can be indexed using subscripts or keys. Sublists can be created by extracting items from the lists, and lists can be concatenated with one and more lists.

# Array operations

# Assign values to scalar
$a = 'rim';
$b = 'sim';
$c = 'dim';

@words = ('DC', 'AC', 'TC', 'TT'); # Assign  four values to  @words array

$count  = @words; # get the count of the array

# Using for operator on the list
print "\n \@words = "; 
for $i (@words){  # Perl takes each item in the @words array and assign it to $i(simple form:for $i ('DC','AC','EMI','SURGE')), and execute the code block between
	print "[$i]"; # curly braces, 
}
print "\n";

# Using the for loop for indexing

# $i is set to zero when the for loop is started. Before perl execute the next statement, it will check if $i is 
# less than $count. After executing the last statement in a for loop code block, perl increment the $i: $i++ value
# Perl goes back to top of the loop to check the condition and see what to do next.
# 	" for (startingCondition; endingCondition; at_end_of_every_loop) {
#        execute_statements_in_this_block; 
#    	}"

for($i=0; $i<$count; $i++){ 
	print "\n Words [$i]: $words[$i]"; #
}

# Print 40 equal signs

print "\n";
print "=" x 40;
print "\n";


# Extracting items into scalar

($x,$y) = @words; # First two items of @words are assigned to $x, $y. Rest of the item of @words array are not used 
print "x =$x, y= $y \n";
($x, $y, $w, $z) = @words;
# Had i used the following line in place of the previous line, I would get the $words[0] in $x and rest of @words in @sublists:
# ($x,@sublist) = @words;
print "x= $x, y = $y, w= $w, z= $z \n";

($anew[0], $anew[3], $anew[5], $anew[9]) = @words; # @anew is created and asign the values from @words array.
 # @anew array is not even the same as @words array, perl automatically resize the @anew to be atleast as large
 # as largest index
$temp = @anew;

# print 40 eual signs

print "=" x 40;
print "\n";

print "Number of elements in anew =" . $temp, "\n";
print "Last index in anew =". $#anew, "\n";
print "Newely crated Anew array is: ";

$j = 0;

for $i (@anew){
	print "\n \$anew[$j] = is [$i]";
	$j++;
}
print "\n";


# Output
#@words = [DC][AC][TC][TT]

# Words [0]: DC
# Words [1]: AC
# Words [2]: TC
# Words [3]: TT
========================================
x =DC, y= AC 
x= DC, y = AC, w= TC, z= TT 
========================================
Number of elements in anew =10
Last index in anew =9
Newely crated Anew array is: 
 $anew[0] = is [DC]
 $anew[1] = is []
 $anew[2] = is []
 $anew[3] = is [AC]
 $anew[4] = is []
 $anew[5] = is [TC]
 $anew[6] = is []
 $anew[7] = is []
 $anew[8] = is []
 $anew[9] = is [TT]

