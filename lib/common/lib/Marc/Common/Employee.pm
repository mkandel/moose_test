package Marc::Common::Employee;

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

our $VERSION = '0.01';

## class variable??!!??
my $id = 0;

## Moose attribute declarations:
## required:
has 'cube_loc'          => (is => 'rw', isa => 'Str', required => 1 );
## optional
has 'c_phone'           => (is => 'rw', isa => 'Str', default  => 'none', lazy => 1, );
has 'h_phone'           => (is => 'rw', isa => 'Str', default  => 'none', lazy => 1, );

sub save {
    my $self = shift;

    return undef;
}

1; # End of Module

__END__
