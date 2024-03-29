# Build.PL for Business-GL-Postalcode

use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    dist_author       => 'Jonas B. Nielsen, (jonasbn) <jonasbn@cpan.org>',
    module_name       => 'Business::FO::Postalcode',
    dist_version_from => 'lib/Business/FO/Postalcode.pm',
    dist_abstract =>
        'Module contaning Faroese zipcodes for validation and deployment',
    license              => 'artistic_2',
    create_makefile_pl   => 'traditional',
    create_readme        => 1,
    recursive_test_files => 1,
    configure_requires   => { 'Module::Build' => '0.40', },
    test_requires        => {
        'Test::More'          => '0', #core
        'Test::Kwalitee'      => '0',
        'Test::Perl::Critic'  => '0',
        'Test::Class'         => '0',
        'Test::CPAN::Changes' => '0',
        'Data::Dumper'        => '0', #core
        'Env'                 => '0', #core
    },
    requires => {
        'Exporter'                 => '0', #core
        'Carp'                     => '0', #core
        'Params::Validate'         => '0',
        'List::Util'               => '0',
        'Data::Handle'             => '0',
        'perl'                     => '5.10.0',
        'Business::GL::Postalcode' => '0.02',
    },
    meta_merge => {
        resources => {
            homepage => 'https://github.com/jonasbn/perl-Business-FO-Postalcode',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Business-FO-Postalcode',
            repository => 'https://github.com/jonasbn/perl-Business-FO-Postalcode',
        }
    },
    add_to_cleanup => [ qw(MANIFEST MANIFEST.bak README *.gz META.*) ],
);

$build->create_build_script();
