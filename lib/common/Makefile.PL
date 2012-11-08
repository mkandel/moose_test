use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Marc::Common',
    AUTHOR              => 'Marc <not a chance>',
#    VERSION_FROM        => '../Common.pm',
#    ABSTRACT_FROM       => '../Common.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 1,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Marc::Common-*' },
);
