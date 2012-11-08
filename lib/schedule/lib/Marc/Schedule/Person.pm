#------------------------------------------------------------------------------
# $Id$
# $HeadURL$
#------------------------------------------------------------------------------
package Marc::Schedule::Person;

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

use Moose;
## Moose implementation
extends 'Marc::Common::Person';
has 'pager'             => (is => 'rw', isa => 'Str');

no Moose;
__PACKAGE__->meta->make_immutable;

=head1 NAME

Marc::Schedule::Person - 

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Marc::Schedule::Person;

    my $foo = Marc::Schedule::Person->new();
    ...

=head1 DESCRIPTION

Write a quick pitch here.

TestModuleStarter solves...

=cut

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 PUBLIC METHODS

some_function() 

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub some_function {
    return 0;
}

=head1

some_other_function() 

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub some_other_function {
    return 0;
}


=head1 PRIVATE METHODS

_private_func()

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub _private_func{
    return 0;
}

=head1

_another_private_func()

    FUNCTION: Brief description of the function

   ARGUMENTS: Describe Arguments
           
     RETURNS: Describe return value

       NOTES: Any special notes

=cut

sub _another_private_func{
    return 0;
}

=head1 AUTHOR

Capacity Delivery Automation Team C<< <capdel-auto at yahoo-inc.com> >>

=head1 LICENSE

Copyright 2011 Yahoo!, Inc.

=cut

1; # End of Module

__END__
