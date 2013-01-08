package Marc::Schedule::Person;

use warnings;
use strict;

our $VERSION = '0.01';

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

local $| = 1;

use Moose;
use namespace::autoclean;
## Moose implementation
with 'Marc::Common::Person';
has 'pager'             => (is => 'rw', isa => 'Str');

#no Moose;
#__PACKAGE__->meta->make_immutable;

1; # End of Module

__END__
