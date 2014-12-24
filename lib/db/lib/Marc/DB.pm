package Marc::DB;

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
with 'Marc::Common::Object';

our $VERSION = '0.0.1';

1; # End of Module

__END__
