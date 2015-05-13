package Marc::Common::Person;

=head1 NAME

Marc::Common::Person

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
use Moose::Role;
use namespace::autoclean;
#use Marc::Common::Object;
with 'Marc::Common::Object';

our $VERSION = '0.0.1';


## Moose attribute declarations:
## required:
has 'f_name'            => ( is => 'ro', isa => 'Str', required => 1 );
has 'l_name'            => ( is => 'ro', isa => 'Str', required => 1 );
has 'u_name'            => ( is => 'ro', isa => 'Str', required => 1 );
has 'w_phone'           => ( is => 'rw', isa => 'Str', required => 1 );
has 'email'             => ( is => 'rw', isa => 'Str', required => 1 );

## custom constructor
has 'id'                => (
    is       => 'ro', 
    isa      => 'Int',
    required => 1,
    builder  => '_build_id',
);

{
    my $id = 0;
    sub _build_id { return $id++; }
}

=over

=item full_name()

    FUNCTION: Returns the full name of the Person

   ARGUMENTS: None

     RETURNS: Nothing, croak's if save is unsuccessful

        NOTE: DUMMY IMPLEMENTATION!!!

=back

=cut

## Method to retrieve textual full name
sub full_name {
    my ( $self, $order ) = @_;
    $order //= 'first_first';

    return $order eq 'first_first'
        ? $self->f_name() . " " . $self->l_name()
        : $self->l_name() . ", " . $self->f_name();
}

=over

=item save()

    FUNCTION: Saves an object

   ARGUMENTS: None

     RETURNS: Nothing, croak's if save is unsuccessful

        NOTE: DUMMY IMPLEMENTATION!!!

=back

=cut

## save() method, required by Marc::Common::Object role
sub save {
    my $self = shift;

    ## no critic
    return undef;
}

1; # End of Module

__END__
