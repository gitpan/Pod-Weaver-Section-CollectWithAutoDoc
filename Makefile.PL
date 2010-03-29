
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Pod::Weaver::Section::CollectWithAutoDoc',
                       'DISTNAME' => 'Pod-Weaver-Section-CollectWithAutoDoc',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Section to gather specific commands and add auto-generated documentation',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100881',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'English' => '0',
                                        'Moose::Autobox' => '0',
                                        'Carp' => '0',
                                        'Test::More' => '0.88',
                                        'Pod::Elemental::Element::Pod5::Verbatim' => '0',
                                        'Pod::Elemental::Element::Pod5::Ordinary' => '0',
                                        'Pod::Elemental::Element::Pod5::Command' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Pod::Weaver::Section::Collect' => '0',
                                        'Sub::Documentation' => '0',
                                        'Pod::Weaver::Role::Preparer' => '0',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



