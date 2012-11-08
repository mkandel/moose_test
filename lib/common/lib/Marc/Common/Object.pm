package Marc::Common::Object;

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

our $VERSION = '0.01';

has 'debug'             => (is => 'ro', isa => 'Str', required => 1, default => 0 );

sub dump {
    my $self = shift;

    return Dumper $self;
}

1; # End of Module

__END__
