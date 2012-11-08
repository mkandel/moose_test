package Marc::Common::Person;

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

## class variable??!!??
my $id = 0;

## Moose attribute declarations:
## required:
has 'f_name'            => (is => 'ro', isa => 'Str', required => 1 );
has 'l_name'            => (is => 'ro', isa => 'Str', required => 1 );
has 'w_phone'           => (is => 'rw', isa => 'Str', required => 1 );
has 'email'             => (is => 'rw', isa => 'Str', required => 1 );
has 'cube_loc'          => (is => 'rw', isa => 'Str', required => 1 );
## optional
has 'c_phone'           => (is => 'rw', isa => 'Str', default  => 'none', lazy => 1, );
has 'h_phone'           => (is => 'rw', isa => 'Str', default  => 'none', lazy => 1, );

## custom constructor
has 'id'                => (
    is       => 'ro', 
    isa      => 'Int',
    required => 1,
    builder  => '_build_id',
);

sub _build_id { return $id++; }
__PACKAGE__->meta->make_immutable;

1; # End of Module

__END__
