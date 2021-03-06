use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.17;

my %WriteMakefileArgs = (
  "ABSTRACT" => "An SMS::Send driver for the apistore.co.kr SMS service",
  "AUTHOR" => "\x{ae40}\x{b3c4}\x{d615} - Keedi Kim <keedi\@cpan.org>",
  "CONFIGURE_REQUIRES" => {},
  "DISTNAME" => "SMS-Send-KR-APIStore",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.008",
  "NAME" => "SMS::Send::KR::APIStore",
  "PREREQ_PM" => {
    "HTTP::Tiny" => 0,
    "JSON" => 0,
    "SMS::Send" => 0,
    "parent" => 0,
    "utf8" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "File::Spec" => 0,
  "HTTP::Tiny" => 0,
  "JSON" => 0,
  "SMS::Send" => 0,
  "Test::More" => 0,
  "parent" => 0,
  "utf8" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
