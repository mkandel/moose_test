#!/usr/bin/perl
use strict;
use warnings;

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
use lib "$FindBin::Bin/../lib";
use Marc::Common::Person;
use Marc::Schedule::Person;

my $mydebug;

GetOptions(
    "debug|d"        => \$mydebug,
) or die "Error: $!\n";

my $prog = $0;
$prog =~ s/^.*\///;

my %attrs1 = (
    f_name     => 'Joe',
    l_name     => 'Blow',
    w_phone    => '408-420-4702',
    email      => 'joeblow@nowhere.net',
    cube_loc   => 'B-6969',
);

my %attrs2 = (
    f_name     => 'Jane',
    l_name     => 'Doe',
    w_phone    => '408-720-9933',
    c_phone    => '666-666-6666',
    email      => 'janedoe@nowhere.net',
    cube_loc   => 'A-6969',
    pager      => 'some@pager.adr',
);

my $p1 = Marc::Common::Person->new( %attrs1 );
my $p2 = Marc::Schedule::Person->new( %attrs2 );

print Dumper $p1;
print Dumper $p2;

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
