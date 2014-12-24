#------------------------------------------------------------------------------
# $Id$
# $HeadURL$
#------------------------------------------------------------------------------
package Marc::DB::Voldemort;

use warnings;
use strict;

use base qw( Exporter );
our @EXPORT_OK = qw/ /;

our %EXPORT_TAGS = ( ALL => [ @EXPORT_OK ] );

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

local $| = 1;

=head1 NAME

Marc::DB::Voldemort - The great new Marc::DB::Voldemort!

=head1 VERSION

Version 0.0.1

=cut

use version; our $VERSION = '0.0.1';


=head1 SYNOPSIS

Voldemort specific DB connection for persisting Marc:: objects

    use Marc::DB::Voldemort;

    my $foo = Marc::DB::Voldemort->new();
    ...

=head1 DESCRIPTION

Write a quick pitch here.

Marc::DB::Voldemort solves...

=cut

#=head1 EXPORT
#
#A list of functions that can be exported.  You can delete this section
#if you don't export anything, such as for a purely object-oriented module.
#
=head1 PUBLIC METHODS

=item some_function() 

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub some_function {
    return 0;
}

=head1

=item some_other_function() 

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub some_other_function {
    return 0;
}


=head1 PRIVATE METHODS

=item _private_func()

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub _private_func{
    return 0;
}

=head1

=item _another_private_func()

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub _another_private_func{
    return 0;
}

=head1 DEPENDENCIES

=head1 AUTHOR

Marc Kandel C<< <marc.kandel at sap.com> >>

=head1 LICENSE

Copyright 2014 Ariba, Inc. (an SAP Company)

=cut

1; # End of Module

__END__

