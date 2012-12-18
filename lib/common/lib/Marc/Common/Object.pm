package Marc::Common::Object;

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

our $VERSION = '0.01';

## Derived classes MUST implement "require"d methods
requires 'save';

has 'debug'   => (is => 'rw', isa => 'Str', required => 1, default => 0 );

sub dump {
    my $self = shift;

    return Dumper $self;
}

after 'new' => sub { 
    my $class = shift;
    my %args = @_;

    if ( defined $args{debug} && $args{debug} == 1 ){
        say "Created new object for class '$class'";
        say "Args:";
        print Dumper \@_;
    }
};

sub is_obj {
    my $self = shift;

    return ref $self ? 1 : 0;
}

sub assert_is_obj {
    my $self = shift;

    unless ( $self->is_obj() ){
        croak "Object method called against a class!\n";
    }
}

sub is_class {
    my $class = shift;

    return !$class->is_obj();
}

sub assert_is_class {
    my $class = shift;

    unless ( $class->is_class() ){
        croak "Object method called against a class!\n";
    }
}

1; # End of Module

__END__
