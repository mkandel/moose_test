#!perl
use strict;
use warnings;
use 5.016;

#use Test::More tests => 3;
use Test::More;
use Test::Moose;

use FindBin qw{ $Bin };
use lib "$Bin/../lib";

my $tests_run = 0;

BEGIN{
    use_ok( 'Marc::Common::Person' );
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

    my $obj = new_ok( 'Marc::Common::Person' => \@arr );
    $tests_run++;

    for my $attr ( keys %attrs ){
        has_attribute_ok( $obj, $attr, "'$attr'" );
        $tests_run++;
    }

}

say "ran '$tests_run' tests";

done_testing( $tests_run );
