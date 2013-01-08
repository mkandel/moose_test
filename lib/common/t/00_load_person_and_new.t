#!perl
use strict;
use warnings;
use 5.016;

<<<<<<< HEAD
#use Test::More tests => 3;
use Test::More;
use Test::Moose;
=======
use Test::More tests => 6;
use Test::Exception;
>>>>>>> 819d7194ab55e135b46b1e4d783d8c44e8206999

use FindBin qw{ $Bin };
use lib "$Bin/../lib";

my $tests_run = 0;

BEGIN{
    use_ok( 'Marc::Common::Employee' );
}
$tests_run++;
say "ran '$tests_run' tests";

does_ok( 'Marc::Common::Person',
    'Marc::Common::Object',
    "'Marc::Common::Person' does the 'Marc::Common::Object' role"
);
$tests_run++;
say "ran '$tests_run' tests";

{
    my %attrs = (
        f_name     => 'Joe',
        l_name     => 'Blow',
        u_name     => 'jblow',
        w_phone    => '408-420-4702',
        email      => 'joeblow@nowhere.net',
        cube_loc   => 'B-6969',
        debug      => 0,
    );

    my @arr = %attrs;

<<<<<<< HEAD
    my $obj = new_ok( 'Marc::Common::Person' => \@arr );
    $tests_run++;

    for my $attr ( keys %attrs ){
        has_attribute_ok( $obj, $attr, "'$attr'" );
        $tests_run++;
    }

=======
    my $obj = new_ok( 'Marc::Common::Employee' => \@arr );
<<<<<<< HEAD
>>>>>>> d65ae16eadae101d24db2ded4baf60111cb85c9a
=======

    ## Work the underlying Marc::Common::Object through some tests through the derived class
    ok( Marc::Common::Employee->is_class(), "Make sure we can validate a class method" );
    ok( $obj->is_obj(),                     "Make sure we can validate an object method" );
    ## dies_ok has this funky syntax ...
    dies_ok { Marc::Common::Employee->assert_is_obj() } 'Make sure we can validate a class method';
    dies_ok { $obj->assert_is_class() }                 'Make sure we can validate an object method';
>>>>>>> 819d7194ab55e135b46b1e4d783d8c44e8206999
}

say "ran '$tests_run' tests";

done_testing( $tests_run );
