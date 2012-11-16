#!perl
use strict;
use warnings;

use Test::More;
#use Test::More tests => 8;
use Test::Exception;

use FindBin qw{ $Bin };
use lib "$Bin/../lib";

#use Marc::Common::Person;
BEGIN{
    use_ok( 'Marc::Common::Person' ); # 1
}

my %attrs1 = ( 
    f_name     => 'Joe',
    l_name     => 'Blow',
    u_name     => 'jblow',
    w_phone    => '408-420-4702',
    email      => 'joeblow@nowhere.net',
    cube_loc   => 'B-6969',
    debug      => 0,
);

my %attrs2 = ( 
    f_name     => 'Jane',
    l_name     => 'Doe',
    u_name     => 'jdoe',
    w_phone    => '408-720-9933',
    c_phone    => '666-666-6666',
    email      => 'janedoe@nowhere.net',
    cube_loc   => 'A-6969',
    pager      => 'some@pager.adr',
);

## new_ok requires an arrayref, coerce the hashes to arrays:
my @arr1 = %attrs1;
my @arr2 = %attrs2;

## Now create the person objects:
my $obj1 = new_ok( 'Marc::Common::Person' => \@arr1 ); # 2
my $obj2 = new_ok( 'Marc::Common::Person' => \@arr2 ); # 3

ok( $obj1->full_name() eq 'Joe Blow', 'Testing $obj1->full_name()'); # 4
ok( $obj2->full_name() eq 'Jane Doe', 'Testing $obj2->full_name()'); # 5
ok( $obj1->f_name() eq 'Joe', 'Testing $obj1->f_name()');            # 6
ok( $obj1->l_name() eq 'Blow', 'Testing $obj1->l_name()');           # 7
ok( $obj2->f_name() eq 'Jane', 'Testing $obj2->f_name()');           # 8
ok( $obj2->l_name() eq 'Doe', 'Testing $obj2->l_name()');            # 9

done_testing();
