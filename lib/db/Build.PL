use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Marc::Common',
    license             => 'perl',
    dist_author         => 'Marc <not a chance>',
#    dist_version_from   => '../Common.pm',
    requires => {
        'Test::More' => 1,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Marc::Common-*' ],
);

$builder->create_build_script();
