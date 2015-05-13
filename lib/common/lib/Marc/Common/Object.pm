package Marc::Common::Object;

=head1 NAME

Marc::Common::Object

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

use 5.012;

## We'll try Moose
use Moose::Role;
use namespace::autoclean;
use Carp;

our $VERSION = '0.0.1';

## Derived classes MUST implement "require"d methods
requires 'save';

=over

=item debug()

    FUNCTION: Enable/Disable debug output from an object

   ARGUMENTS: 0/1

     RETURNS: N/A

=back

=cut

has 'debug'   => (is => 'rw', isa => 'Bool', required => 1, default => 0 );

=over

=item dump()

    FUNCTION: Return a Data::Dumper dump of an object

   ARGUMENTS: None

     RETURNS: Data::Dumper dump of an object

=back

=cut

sub dump {
    my $self = shift;

    return Dumper $self;
}

=over

=item new()

    FUNCTION: Constructor decorator

   ARGUMENTS: N/A

     RETURNS: Nothing, adds extra debug output

       NOTES: If you pass 'debug => 1' to new()
              the constructor will print a dump
              of the newly created object.

=back

=cut

after 'new' => sub { 
    my $class = shift;
    my %args = @_;

    if ( defined $args{debug} && $args{debug} == 1 ){
        say "Created new object for class '$class'";
        say "Args:";
        print Dumper \@_;
    }
};

=over

=item is_obj()

    FUNCTION: Am I an object?

   ARGUMENTS: None

     RETURNS: 1 if an object, 0 if not (we'd be the class in that case)

=back

=cut

sub is_obj {
    my $self = shift;

    return ref $self ? 1 : 0;
}

=over

=item assert_is_obj()

    FUNCTION: Asserts on 'Am I an object'

   ARGUMENTS: None

     RETURNS: Nothing, croak's if we're not an object

=back

=cut

sub assert_is_obj {
    my $self = shift;

    unless ( $self->is_obj() ){
        croak "Object method called against a class!\n";
    }
}

=over

=item is_class()

    FUNCTION: Am I a class?

   ARGUMENTS: None

     RETURNS: 1 if a class, 0 if not (we'd be an object in that case)

=back

=cut

sub is_class {
    my $class = shift;

    return !$class->is_obj();
}


=over

=item assert_is_class()

    FUNCTION: Asserts on 'Am I a class'

   ARGUMENTS: None

     RETURNS: Nothing, croak's if we're not a class

=back

=cut

sub assert_is_class {
    my $class = shift;

    unless ( $class->is_class() ){
        croak "Object method called against a class!\n";
    }
}

1; # End of Module

__END__

