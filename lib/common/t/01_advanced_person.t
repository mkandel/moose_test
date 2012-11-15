#!perl
use strict;
use warnings;

use Test::More tests => 2;
use Test::Exception;

use FindBin qw{ $Bin };
use lib "$Bin/../lib";

use Marc::Common::Person;

my %attrs1 = ( 
    f_name     => 'Joe',
    l_name     => 'Blow',
    u_name     => 'jblow',
    w_phone    => '408-420-4702',
    email      => 'joeblow@nowhere.net',
    cube_loc   => 'B-6969',
    debug      => 0,
);

my @arr = %attrs1;

my $obj1 = new_ok( 'Marc::Common::Person' => \@arr );
