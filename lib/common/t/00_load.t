#!perl
use strict;
use warnings;
use Test::More;
#use Test::More tests => 3;
use FindBin qw{ $Bin };
use lib "$Bin/../lib";

my @subs = qw{};

#use Marc::Common::Person;

BEGIN{
    use_ok( 'Marc::Common::Person' );
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

    my $obj = new_ok( 'Marc::Common::Person' => \@arr );
}

#can_ok( __PACKAGE__, 'new' );
#ok( __PACKAGE__->
done_testing();
