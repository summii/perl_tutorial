#!/usr/bin/perl

# File Handles and Operators
# Let's discuss some input/output operations

# A perl program has three file handles when start up: STDIN(for standard inout), STDOUT(for standard output) and
# STDERR(for standard error message output).

# For open a file for I/O you have to use open statement.
#     open(HANDLE, $filename); 
# To close a file, you can use
#     close(HANDLE, $filename);

# you can use the print() statement to write to the file.
# print HANDLE $output.

# To read one line from given file HANDLE.
#	$line = <HANDLE>

# Testing File parameters


 $name = "test.txt";
 print "\nTesting flags for $name \n";
 print "\n========== Effective User ID tests "; 
 print "\n is readable" if ( -r $name);
 print "\n is writable" if ( -w $name);
 print "\n is executable" if ( -x $name);
 print "\n is owned " if ( -o $name);
 print "\n========== Real User ID tests ";
 print "\n is readable" if ( -R $name);
 print "\n is writable" if ( -W $name);
 print "\n is executable" if ( -X $name);
 print "\n is owned by " if ( -O $name);
 
 print "\n========== Reality Checks ";
 print "\n exists " if ( -e $name);
 print "\n has zero size " if ( -z $name);
 print "\n has some bytes in it " if ( -s $name); 
 
 print "\n is a file " if (-f $name);
 print "\n is a directory " if (-d $name);
 print "\n is a link " if (-l $name);
 print "\n is a socket " if (-S $name);
 print "\n is a pipe " if (-p $name);
 
 print "\n is a block device " if (-b $name);
 print "\n is a character device " if (-c $name); 
 
 print "\n has setuid bit set " if (-u $name);
 print "\n has sticky bit set " if (-k $name);
 print "\n has gid bit set " if (-g $name);
 
 print "\n is open to terminal " if (-t $name);
 print "\n is a Binary file " if (-B $name);
 print "\n is a Text file " if (-T $name);
 
 printf "\n";

