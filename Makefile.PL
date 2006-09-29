#use 5.008008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Image::ImageShack',
    VERSION_FROM      => 'lib/Image/ImageShack.pm', # finds $VERSION
	EXE_FILES         => ['eg/imageshack_submit'],
    PREREQ_PM         => {
		'LWP' => 0
	}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Image/ImageShack.pm', # retrieve abstract from module
       AUTHOR         => 'Cláudio Valente <plank@cpan.org>') : ()),
);
