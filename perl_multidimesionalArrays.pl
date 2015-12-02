#!/usr/bin/perl
# Using Multi-dimensional

# The way to create a reference to an ARRAY is with the statement @array = list. You can  create a reference to
# complex anonymous array by using square brackets.
# eg:
# $list = ['solid', 'black',['1', '2','3'],['4','5','6']];
# This array is refered to by scalar $line.
# To get the elements of the inner array elements, you can use the given multi-dimensional syntax.
# $arrayReference->[$index1]; single dimension array
# $arrayReference->[$index2]; two dimension array
# $arrayReference->[$index3]; three dimension array

# Using multi-dimension arrayReference

#$line = ['solid', 'black',['1', '2','3'],['4','5','6']];
#$list = ['solid', 'black',['1', '2','3',['4','5','6']]];

#print "\$line->[0] = $line->[0] \n";
#print "\$line->[1] = $line->[1] \n";
#print "\$line->[2][0] = $line->[2][0] \n";
#print "\$line->[2][1] = $line->[2][1] \n";
#print "\$line->[2][2] = $line->[2][2] \n";
#print "\$line->[3][0] = $line->[3][0] \n";
#print "\$line->[3][1] = $line->[3][1] \n";
#print "\$line->[3][2] = $line->[3][2] \n";
#print "\n";
# Extended multi-dimensional array
#print "\$list->[0] = $list->[0] \n";
#print "\$list->[1] = $list->[1] \n";
#print "\$list-->[2][0] = $list->[2][0] \n";
#print "\$list->[2][1] = $list->[2][1] \n";
#print "\$list->[2][2] = $list->[2][2] \n";
#print "\$list->[2][3][0] = $list->[2][3][0] \n";
#print "\$list->[2][3][1] = $list->[2][3][1] \n";
#print "\n";


#OUTPUT
#$line->[0] = solid 
#$line->[1] = black 
#$line->[2][0] = 1 
#$line->[2][1] = 2 
#$line->[2][2] = 3 
#$line->[3][0] = 4 
#$line->[3][1] = 5 
#$line->[3][2] = 6 

# OUTPUT (extended multi-dimension)
#$list->[0] = solid 
#$list->[1] = black 
#$list-->[2][0] = 1 
#$list->[2][1] = 2 
#$list->[2][2] = 3 
#$list->[2][3][0] = 4 
#$list->[2][3][1] = 5 

# Using multi-dimension and hash

%cube = (
		'0', ['0','0','0'],
		'1', ['0','0','1'],
		'2', ['0','1','0'],
		'3', ['0','1','1'],
		'4', ['1','0','0'],
		'5', ['1','1','0'],
		'6', ['1','1','1'],

	);
$pointer = \%cube;
print "\nThe cube \n";
for $i (sort keys %$pointer) {
	$list = $$pointer{$i}; # $list variable is used to get reference to each coordinate
	$x= $list->[0]; # After you get the list, you can reference off to each elements in the list
	$y = $list->[1];
	$z = $list->[2];
	print "$i = $x,$y,$z \n";
}

# OUTPUT
# The cuBe 
#0 = 0,0,0 
#1 = 0,0,1 
#2 = 0,1,0 
#3 = 0,1,1 
#4 = 1,0,0 
#5 = 1,1,0 
#6 = 1,1,1 

