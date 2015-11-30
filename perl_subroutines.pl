#!/usr/bin/perl

# Perl supports subroutines and functions with command sub. You can pointers to subroutines, here is the syntax
# sub Name {

# } # ending curly doesn't require semi-colon to terminate it. If you are using reference to subroutines ,
# it can be declared without name
#	$pointer = sub {

#	}; # now you can use semicolon to terminate it. To call this function
# &\$pointer(argument list);

# Parameters to subroutines are passed in the _@ array, you can use $_[0], $_[1] and so on. You can define your
# own local keywords. Here's the syntax
# sub sample {
#	local($a, $b, @x, $c) = @_;
#	&lowerFun();
# }
#In this subroutine, you'll find that $a = $_[0], $b = $_[1], and @c point to the rest of the arguments as one list with $x empty. Generally, an array is the last assignment in such an assignment because it chews up all your parameters.

#The local variables will all be available for use in the lowerFunc() function. To hide $a, $b, @c, and $x from lowerFunc, use the my keyword like this:

#my ($a, $b, @c, $x) = @_
#Remember, $x is empty. Now, the code in lowerFunc() is not be able to access $a, $b, @c, or $x.

#Parameters in Perl can be in form, from the looks of it. Since Perl 5.002, you can define 
#prototypes for subroutine arguments with the following syntax:

#sub   Name (parameters) {

#}
#If the parameters are not what the function expects, Perl bails out with an error. The parameter format is as follows: $ for a scalar, @ for an array, % for a hash, & for a reference to a subroutine, and * for anything. Therefore, if you want your function to accept only three scalars, you would declare it as this:

#sub func1($$$) {
#    my ($x,$y,$z) = @_;
#    code here
#}
#To pass the value of an array by reference (by pointer), you would use a backslash (\). If you pass two arrays without the backslash specifier, the contents of the two arrays will be concatenated into one long array in @_. The function prototype to pass three arrays, a hash, and the rest in an array, would look like this:

#sub func2(\@\@\@\%@)
#The returned value from a subroutine is always the value of the last expression executed in the statement. The value can be a scalar, array, hash, or reference to an array.
