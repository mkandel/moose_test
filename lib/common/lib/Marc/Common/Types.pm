package Marc::Common::Types;

use warnings;
use strict;

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

local $| = 1;

## We'll try Moose
use Moose::Util::TypeConstraints;

## example:
##subtype 'AdmissibleAge'
##    => as 'Num'
##    => where {$_ >= 0 and $_ <= 99};

our $VERSION = '0.0.1';

1; # End of Module

__END__
