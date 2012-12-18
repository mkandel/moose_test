#!perl
use strict;
use warnings;

use Test::More tests => 6;
use Test::Exception;

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

    ## Work the underlying Marc::Common::Object through some tests through the derived class
    ok( Marc::Common::Employee->is_class(), "Make sure we can validate a class method" );
    ok( $obj->is_obj(),                     "Make sure we can validate an object method" );
    ## dies_ok has this funky syntax ...
    dies_ok { Marc::Common::Employee->assert_is_obj() } 'Make sure we can validate a class method';
    dies_ok { $obj->assert_is_class() }                 'Make sure we can validate an object method';
}
