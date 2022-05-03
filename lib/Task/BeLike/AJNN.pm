use 5.014;
use warnings;

package Task::BeLike::AJNN;
# ABSTRACT: Install modules used by AJNN
our $VERSION = 'v5.34.0';

# Versioning:
# - Major/minor version follows the Perl version, e.g. 5.30.x
# - Patch version is incremented independently of Perl version
# Future versions of this module may use a different scheme, but
# will always use the dotted-integer syntax with a leading 'v'.

# Note:
# In case a package is listed twice with two different version requirements,
# Pod::Weaver::Plugin::TaskWeaver 0.101628 will always use the last version,
# not the latest version. In practice, this doesn't matter much because
# tools like cpanm tend to always fetch the latest version anyway. As a
# consequence, version numbers listed here are for documentation only.



=pkgroup general

=pkg perl 5.024 postderef

=pkg App::cpanminus::reporter



=pkgroup common packages

Packages that are not just used for any one specific project.
These might be useful for quick one-liners or throw-away scripts.

=pkg Cpanel::JSON::XS

=pkg JSON::MaybeXS

=pkg DBI

=pkg URI

=pkg LWP

=pkg LWP::Protocol::https

=pkg IO::Socket::SSL

=pkg Mojolicious

C<< -ML<ojo> >> one-liners

=pkg Path::Tiny

=pkg File::Rename

Rename a bunch of files by applying C<s///> expressions.

=pkg Feature::Compat::Try

=pkg Object::Pad 0.57 C<:does()>

=pkg Mac::PropertyList




=pkgroup Perl development

=pkg Test::Exception

=pkg Test::Warnings

=pkg Devel::StackTrace

=pkg Carp::Always

=pkg XXX



=pkgroup Perl development (Dist::Zilla)

=pkg Dist::Zilla

=pkg Dist::Zilla::Plugin::Bootstrap::lib

=pkg Dist::Zilla::Plugin::PodSyntaxTests

=pkg Dist::Zilla::Plugin::Run 0.047 C<%o>

=pkg Dist::Zilla::Plugin::TaskWeaver

=pkg Dist::Zilla::Plugin::Test::MinimumVersion

=pkg Dist::Zilla::Plugin::Test::Perl::Critic

=pkg Dist::Zilla::Plugin::Test::ReportPrereqs

=pkg Dist::Zilla::Plugin::VersionFromModule

=pkg Dist::Zilla::PluginBundle::Author::AJNN 0.0203 cpan_release

=pkg Archive::Tar::Wrapper

=pkg Test::Pod

=pkg Dist::Zilla::App::Command::cover

=pkg Pod::Coverage



=pkgroup PROJ

=pkg Alien::proj

=pkg IPC::Run3

=pkg FFI::Platypus 1.00

=pkg FFI::C 0.08 C<enum()>

=pkg Convert::Binary::C 0.04

=pkg Feature::Compat::Defer

used in example code

=pkg Exporter::Easy



=pkgroup INT2

=pkg Geo::ShapeFile

=pkg Geo::LibProj::cs2cs 1.02 XS mode

=pkg Geo::LibProj::FFI

=pkg Math::Round

=pkg SVG



=pkgroup local datum

1014J / 1531J (legacy code also requires L<Geo::Proj>/L<Geo::Point>)

=pkg Geometry::AffineTransform

=pkg Geo::JSON

=pkg URI



=pkgroup hpd

=pkg DBI

=pkg DBD::MariaDB

=pkg Neo4j::Driver

=pkg DateTime::Format::ISO8601

=pkg Math::RPN

=pkg File::Slurper

=pkg PerlIO::utf8_strict

makes L<File::Slurper> faster

=pkg File::BOM

F<pegel2svg.pl>

=pkg XML::LibXML

=pkg Text::CSV

=pkg Geo::LibProj::FFI

=pkg Geo::LibProj::cs2cs 1.02 XS mode



=pkgroup ajnn.de: 1049J

=pkg CGI

=pkg Date::Format

=pkg Template

=pkg XML::LibXML



=pkgroup ajnn.de: 1320J

=pkg CGI



=pkgroup ajnn.de: 1874J, 1929J, 2093J (and possibly others)

=pkg Mojolicious

=pkg DBI

=pkg DBD::MariaDB



=pkgroup ajnn.de: 1932J

=pkg Mojolicious

=pkg DateTime

=pkg DateTime::TimeZone

=pkg Date::Gregorian

=pkg Astro::Sunrise



=pkgroup Neo4j

=pkg Mock::Quick

=pkg LWP 6.04

=pkg File::Slurp

=pkg JSON::MaybeXS 1.003003 boolean interoperability

=pkg Neo4j::Types

=pkg Try::Tiny

=pkg URI



=begin comment

=pkgroup SKGB

Particularly for SKGB::Intern and SKGB::Regeln. Since both
now are discontinued, this group is no longer very useful.

=pkg Mojolicious 8.00

=pkg Regexp::Common

=pkg Text::WordDiff

=pkg SemVer

=pkg Perl::Version

=pkg Mojolicious::Plugin::Authorization

=pkg String::Util

=pkg String::Random

=pkg List::MoreUtils

=pkg Util::Any

=pkg DateTime

=pkg DateTime::Format::ISO8601

=pkg Time::Date

=pkg Mojo::SMTP::Client

=pkg Email::MessageID

=pkg Neo4j::Driver

=pkg REST::Neo4p

=pkg Business::IBAN

=pkg XML::LibXML

=pkg XML::LibXSLT

=pkg Text::Trim

=end comment



=head1 PREREQUISITES

The following points should be considered I<before> installing this task:

=over

=item * A B<C++ compiler> is required for L<Alien::proj>.

Packages: Debian C<g++>.

=item * The B<MariaDB / MySQL> drivers may require either database to be preinstalled during configuration. The header files may also be required.
Furthermore, both drivers have test suites that seem to be somewhat
fragile. It may be a good idea to install these drivers I<before>
this task, with C<--notest>. Additionally, L<DBD::mysql> has an 
L<issue|https://github.com/perl5-dbi/DBD-mysql/issues/341#issuecomment-1074321430>
with the MariaDB Homebrew installation that can cause configuration to
fail unless the variable C<DBD_MYSQL_CONFIG=mariadb_config> is set in
the environment.

Packages: Debian C<libmariadb-dev-compat>, Homebrew C<mariadb>.

=item * The B<SSL> header files may be required, either by the SSL
modules or by some other XS modules.

Packages: Debian C<libssl-dev>.

=item * The B<XML> modules may require libxml2 to be preinstalled.

Packages: Debian C<libxml2-dev>, Homebrew C<libxml2>.

=back



=cut

1;
