#!/usr/bin/perl

# Associated Arrays 

# An associated array is really an array with two index per item. First item at each index is called 'key' and other item is called 'value'.
# you index into associated arrays using keys to get values.
# An associated array is preceded with percentage (%) sign and index items are enclosed with curly braces{}.

# An example to show associated arrays


%subscript = (  # An associated called %subscript is created
	'bmp', 'Bitmap',
	'cpp', 'C++ file',  # three items(key,value) pairs are added to %subscript
	'txt', 'Text file', );

$bm = 'asc';  # new item is added to array %subscript by assigning $bm to a key
$subscript{$bm} = 'Asc file'; #alternative way, $subscript{'asc'} = 'Asc file'; can be used either.

print "\n==========Raw dump of hash=====\n";
print %subscript;

print "\n==========using foreach()=======\n";
foreach $key (keys (%subscript)){ #foreach statement to loop over keys
	$value = $subscript{$key}; # value of the item $subscript{$key} assign to $value,  
	print "key = $key, value = $value \n"; # key = $key, value = $subscript{$key} can be used either;
}

print "\n==========using foreach() with sort==========\n";
foreach $key (sort keys (%subscript)){ # sort the keys and foreach statement for loop over keys
	$value = $subscript{$key};
	print "key = $key, value = $value \n";
}

print "\n=========using each=============\n";

# Its more efficient to use each() function when you working with asociated arrays because only one lookup is required to get the key and its value.

while (($key, $value) = each(%subscript)){
	print "key = $key, value = $value \n";
}


# output 
==========Raw dump of hash=====
ascAsc filecppC++ filebmpBitmaptxtText file
==========using foreach()=======
key = asc, value = Asc file 
key = cpp, value = C++ file 
key = bmp, value = Bitmap 
key = txt, value = Text file 

==========using foreach() with sort==========
key = asc, value = Asc file 
key = bmp, value = Bitmap 
key = cpp, value = C++ file 
key = txt, value = Text file 

=========using each=============
key = asc, value = Asc file 
key = cpp, value = C++ file 
key = bmp, value = Bitmap 
key = txt, value = Text file 