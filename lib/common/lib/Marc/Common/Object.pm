#------------------------------------------------------------------------------
# $Id$
# $HeadURL$
#------------------------------------------------------------------------------
package Marc::Common::Object;

use warnings;
use strict;

use base qw( Exporter );
our @EXPORT_OK = qw/ /;

our %EXPORT_TAGS = ( ALL => [ @EXPORT_OK ] );

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

local $| = 1;

## We'll try Moose
use Moose;
use namespace::autoclean;

our $VERSION = '0.01';

1; # End of Module

__END__
