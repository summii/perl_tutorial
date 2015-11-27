#!/usr/bin/perl

# perl has arrays to let you groups items in single varibale name. perl offers two types of arrays: those whose items indexed by numbers(arrya) and those whose items indexed by string(associated array).An indexed in an array is reffered to as subscript of the array.
# TIP: associated arrays mostly knowns as 'hash' because of the way its stored internally in perl.

# Arrays are reffered to with the @ symbol. Iidividual items in an array derived as $ and subscript.Therefore, first item in an array @count would be $count[0] and second would be $count[1] and so on.
#!/usr/bin/perl

# An example to show how arrays work in perl

@amounts = (10,20,29); # three integer values assigned to the @amount array.
@parts = ('computer', 'rat', 'kbd'); # three strings are assigned to the @parts array.

$a =1, $b =2, $c= 3; # assign nummerical values to variables
@count = ($a, $b, $c); # assign the varibles values to @count array.

@empty = (); # empty array is created.

@spare = @parts; # array @spare is assigned the same values as those in @parts array.

print '@amounts = '; #print statement
print "@amounts \n"; #printing array

print '@parts = ';
print "@parts \n";

print '@count =';
print "@count \n";

print '@empty =';
print "@empty \n";

print '@spare =';
print "@spare \n";

#printing individual items from arrya

print '@amount[0] = ';
print "@amount[0] \n";
print '@amount[1] = ';
print "@amount[1] \n";
print '@amount[2] = ';
print "@amount[2] \n";

print "Items in \@amounts = $#amounts \n"; # '#amounts' will print last element in index

$size = @amounts; print "size of = $size\n"; # assign array to scalar than it will print size of array

print "Items in 0 \@amounts = $amounts[$[]\n"; # shows the use of a special Perl variable, $[, which is the base subscript (0) of an array.

# output
@amounts = 10 20 29 
@parts = computer rat kbd 
@count =1 2 3 
@empty = 
@spare =computer rat kbd 
@amount[0] =  
@amount[1] =  
@amount[2] =  
Items in @amounts = 2 
size of = 3
Items in 0 @amounts = 10