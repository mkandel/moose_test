use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Marc::Schedule',
    license             => 'perl',
    dist_author         => 'Marc <not a chance>',
#    dist_version_from   => '../Schedule.pm',
    requires => {
        'Test::More' => 1,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Marc::Schedule-*' ],
);

$builder->create_build_script();
