package Marc::DB::SQLite;

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

sub create_db {
    ## Dummy implementation
    ## no critic
    return undef;
}

__PACKAGE__->meta->make_immutable;

1; # End of Module

__END__
