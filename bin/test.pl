#!/usr/bin/env perl -w
use strict;
use warnings;

use 5.012;

use Time::HiRes qw( gettimeofday );
my $start = gettimeofday();

use Carp;

use Getopt::Long;
Getopt::Long::Configure ("bundling");

use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

use FindBin;
use lib "$FindBin::Bin/../lib/common/lib/";
use lib "$FindBin::Bin/../lib/schedule/lib/";
use Marc::Common::Person;
use Marc::Schedule::Person;

# TODO: Testing
my $mydebug = 1;

GetOptions(
    "debug|d"        => \$mydebug,
) or die "Error: $!\n";

my $prog = $0;
$prog =~ s/^.*\///;

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
    pager      => 'some@pager.adr',
);

my $p1 = Marc::Common::Person->new( %attrs1 );
my $p2 = Marc::Schedule::Person->new( %attrs2 );

#print Dumper $p1;
#print Dumper $p2;
my $p1_dump = $p1->dump();
my $p2_dump = $p2->dump();
say "Object Dumps:";
print "$p1_dump\n\n$p2_dump\n";

say "This should fail (missig required arg), let's eval and trap it:";

my %attrs3 = (
    f_name     => 'BAD',
    l_name     => 'BOY',
    u_name     => 'bboy',
#    w_phone    => '123-123-1234',
    email      => 'badboy@nowhere.net',
    cube_loc   => 'B-6969',
);

my $p3;
eval {
    $p3 = Marc::Schedule::Person->new( %attrs3 );
};
if ( $@ ){
    say "Yup, it died:";
    my @missing;
    foreach ( $@ ){
        chomp;
#        say "\t$_";
        ## Ex: Attribute (w_phone) is required
        ##                           Capture what's insude the perens
        $_ =~ /Attribute \((.*)\) is required/;
        push @missing, $1;
    }
    say "analysis - missing arg:";
    foreach my $missing ( @missing ){
        say "\t$missing";
    }

} else {
    say "Hmmmm ...";
    print Dumper $p3;
}

END{
    if ( $mydebug ){
        my $run_time = gettimeofday() - $start;
        print "$prog ran for ";
        if ( $run_time < 60 ){
            print "$run_time seconds.\n";
        } else {
            use integer;
            print $run_time / 60 . " minutes " . $run_time % 60
                . " seconds ($run_time seconds).\n";
        }
    }   
}

__END__
