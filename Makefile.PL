use 5.010000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'qn',
    VERSION_FROM      => 'lib/qn.pm',
    PREREQ_PM         => {},
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/qn.pm',
       AUTHOR         => 'Rick Myers <jrm@cpan.org>') : ()),
    realclean     => {
        FILES => [ qw(
            MANIFEST.bak qn-*.tar.gz
        ) ],
    },

);
