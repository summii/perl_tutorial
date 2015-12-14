# Perl Module
# A perl code is a set of Perl Code that acts like a library of function call.
# You can keep all your resuseable code specific to a set of task in Perl Module.
# Therefore all the functionality pertaining to one type of task is contained in one file.
# Modules are there to package variables, symbols and interconnected data together.
# The best way to illustrate the semantics of how a module is used in Perl is to write a simple 
# module and show how to use it.
# Let's take an example of , Mark, who is tired of typing the same "request for payment" letters.
# Write a perl to help him to generate his memos and letters.
#!/usr/bin/perl

# uncomment the line below to include the current dir in @Inc.
# push(@Inc, 'pwd');
use Letter;

Letter::To("Mr. X", "Race money");
Letter::ClaimMoney();
Letter::FinishDem();