package Marc::DB::FlatFile;

use warnings;
use strict;

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

local $| = 1;

use 5.012;

## We'll try Moose
use Moose;
use namespace::autoclean;

use DBD::SQLite;
with 'Marc::DB';

our $VERSION = '0.01';

has 'dir'  =>(
    is => 'rw', isa => 'Str', required => 1, default => './'
)

sub save {
    ## Dummy implementation
    ## no critic
    return undef;
}

1; # End of Module

__END__
