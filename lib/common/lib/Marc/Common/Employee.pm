package Marc::Common::Employee;

=head1 NAME

Marc::Common::Employee

=head1 VERSION

Version 0.0.1

=cut

use warnings;
use strict;

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

local $| = 1;

## We'll try Moose
use Moose;
use namespace::autoclean;
with 'Marc::Common::Person';

our $VERSION = '0.0.1';

## class variable??!!??
my $id = 0;

## Moose attribute declarations:
## required:
has 'cube_loc'          => (is => 'rw', isa => 'Str', required => 1 );
## optional
has 'c_phone'           => (is => 'rw', isa => 'Str', default  => 'none', lazy => 1, );
has 'h_phone'           => (is => 'rw', isa => 'Str', default  => 'none', lazy => 1, );

=over

=item save()

    FUNCTION: Saves an object

   ARGUMENTS: None

     RETURNS: Nothing, croak's if save is unsuccessful

        NOTE: DUMMY IMPLEMENTATION!!!

=back

=cut

sub save {
    my $self = shift;

    ## no critic
    return undef;
}

1; # End of Module

__END__
