#!/usr/bin/perl

# A reference is simple a pointer to something, It is very similer to pointer in C.
# A reference in your program is simple an address to value.

# The backlash operator
#
#
# Using the backslash operator is analogous to using the ampersand (&) operator in C to pass the address of an operator. 
# This method is usually used to create a second, new reference to the variable in question. Here's how to create a reference to a scalar variable:
# $variable = 10;
# $pointer = \$variable; # $pointer points to location containing the value of $variable
# $ice = "jello";
# $iceptr = \$ice;

# References to Scalars
# $value = 10;
# $pointer = \$value;
# printf "\npointer address $pointer of $value\n";
# printf "\n what pointer *($pointer) points to $$pointer\n";

# output
# Pointer Address SCALAR(0x806c520) of 10

#  What Pointer *(SCALAR(0x806c520)) points to 10


# References and Array
# Most important thing about perl: all @array and %hashes are always one-dimensional.
# As such, the arrays and hashes hold only scalar values and do not directly contain other arrays or complex data structures. If it's a member of an array, it's either a data item or a reference to a data item.

# You can also use the backslash operator on arrays and hashes, just as you would for scalar variables
# Using array refereneces
#$pointer = \@ARGV;
#printf "\n pointer address of ARGV = $pointer\n"; #simply prints the address of ARGV
#$i = scalar(@$pointer); # GET THE COUNT OF ELEMENTS IN AN ARRAY
#printf "\nNumber of arguments: $i\n";
#$i = 0;
#foreach(@$pointer){ access the entire array
#	printf "$i : $$pointer[$i++]; \n"
#}

# OUTPUT
# pointer address of ARGV = ARRAY(0x9257be0)

#Number of arguments: 4
#0 : 2; 
#1 : 3; 
#2 : 4; 
#3 : 5;

# Using refernces to associated arrays
 %month = (
		'01', 'jan',
		'02', 'feb',
		'03', 'mar',
		'04', 'apr',
		'05', 'may',
		'06', 'jun',
		'07', 'jul',
		'08', 'aug',
		'09', 'sep',
		'10', 'oct',
		'11', 'nov',
		'12', 'dec',
			);
 $pointer = \%month; # this will create a hard reference
 printf "The address of hash = $pointer\n";

 # these following lines would used to be print associative array if %month was used.
  foreach $i (sort keys %month){
  	printf "\n$i : $$pointer{$i}";
  }

#  associative arrays if $pointer was used

foreach $i (sort keys %$pointer){
	printf "$i is $$pointer{$i} \n";
}

# OUTPUT
#The address of hash = HASH(0x8e432c0)

#01 : jan
#02 : feb
#03 : mar
#04 : apr
#05 : may
#06 : jun
#07 : jul
#08 : aug
#09 : sep
#10 : oct
#11 : nov
#12 : dec
#01 is jan 
#02 is feb 
#03 is mar 
#04 is apr 
#05 is may 
#06 is jun 
#07 is jul 
#08 is aug 
#09 is sep 
#10 is oct 
#11 is nov 
#12 is dec

 
