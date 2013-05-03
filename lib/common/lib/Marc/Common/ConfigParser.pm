package Marc::Common::ConfigParser;

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
has 'filename'          => (is => 'rw', isa => 'Str', required => 1 );
has 'format'            => (is => 'rw', isa => 'Str', default  => 'yaml', required => 1, );
has 'paths'             => (is => 'rw', isa => 'ArrayRef[Str]', default  => 'none', required => 1, );

sub save {
    my $self = shift;

    ## no critic
    return undef;
}

__PACKAGE__->meta->make_immutable;

1; # End of Module

__END__
