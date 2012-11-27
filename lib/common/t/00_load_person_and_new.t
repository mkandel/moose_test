#!perl
use strict;
use warnings;

use Test::More tests => 2;

use FindBin qw{ $Bin };
use lib "$Bin/../lib";

BEGIN{
    use_ok( 'Marc::Common::Employee' );
}

{
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

    my $obj = new_ok( 'Marc::Common::Employee' => \@arr );
}
