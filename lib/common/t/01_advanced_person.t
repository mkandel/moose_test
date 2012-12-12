#!perl
use strict;
use warnings;

use Test::More;
#use Test::More tests => 11;
use Test::Exception;

use FindBin qw{ $Bin };
use lib "$Bin/../lib";

#use Marc::Common::Employee;
BEGIN{
    use_ok( 'Marc::Common::Employee' );
}

my %attrs1 = ( 
    f_name     => 'Joe',
    l_name     => 'Blow',
    u_name     => 'jblow',
    w_phone    => '408-420-4702',
    email      => 'joeblow@nowhere.net',
    cube_loc   => 'B-6969',
);

my %attrs2 = ( 
    f_name     => 'Jane',
    l_name     => 'Doe',
    u_name     => 'jdoe',
    w_phone    => '408-720-9933',
    c_phone    => '666-666-6666',
    email      => 'janedoe@nowhere.net',
    cube_loc   => 'A-6969',
);

## new_ok requires an arrayref, coerce the hashes to arrays:
## this is pretty silly ... probably my own ignorance ...
## this didn't work: my $obj1 = new_ok( 'Marc::Common::Employee' => \@{ \%attrs1 } );
my @arr1 = %attrs1;
my @arr2 = %attrs2;

## Now create the person objects:
note( 'Object creation:' );
my $obj1 = new_ok( 'Marc::Common::Employee' => \@arr1 );
my $obj2 = new_ok( 'Marc::Common::Employee' => \@arr2 );

## First Employee:
note( 'First Employee:');
## Non-attribute:
ok( $obj1->full_name() eq 'Joe Blow', 'Testing $obj1->full_name()');

## Attributes:
for my $attr ( keys %attrs1 ){
    ok( $obj1->$attr() eq $attrs1{ $attr }, "Testing \$obj1->$attr()");
}
## Wow the for loop is much cleaner than the individual ok's below ...
#ok( $obj1->f_name()    eq 'Joe', 'Testing $obj1->f_name()');
#ok( $obj1->l_name()    eq 'Blow', 'Testing $obj1->l_name()');
#ok( $obj1->u_name()    eq 'jblow', 'Testing $obj1->u_name()');
#ok( $obj1->w_phone()   eq '408-420-4702', 'Testing $obj1->w_phone()');
#ok( $obj1->email()     eq 'joeblow@nowhere.net', 'Testing $obj1->email()');
#ok( $obj1->cube_loc()  eq 'B-6969', 'Testing $obj1->l_name()');

## Second Employee:
note( 'Second Employee:');
## Non-attribute:
ok( $obj2->full_name() eq 'Jane Doe', 'Testing $obj2->full_name()');

## Attributes:
for my $attr ( keys %attrs2 ){
    ok( $obj2->$attr() eq $attrs2{ $attr }, "Testing \$obj2->$attr()");
}

## Tests that should fail:
note( 'Tests that should fail:' );

## Missing required attribute:
my %attrs3 = ( 
    f_name     => 'BAD',
    l_name     => 'BOY',
    u_name     => 'bboy',
    #w_phone    => '123-123-1234',
    email      => 'badboy@nowhere.net',
    cube_loc   => 'B-6969',
);

my $obj3;
dies_ok { $obj3 = Marc::Common::Employee->new( %attrs3 ) } 'Missing required arg';
dies_ok { $obj2->foo() } 'Attempt to call non-existant $obj->$attribute() method';

done_testing();
