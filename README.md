Task::BeLike::AJNN
==================

Installs Perl modules used by [AJNN][]. Meant to simplify adding Perl
installations to an environment, particularly during Perl upgrades,
server provisioning, and automated tests.

The list of modules is not necessarily complete.

[AJNN]: https://metacpan.org/author/AJNN


To Do
-----

This task includes modules for several apps that don't handle their
own prereqs. Those apps should be converted into distros of their own,
so that this task can then be simplified.


Usage
-----

You should already have [App::cpanminus][].

[App::cpanminus]: https://metacpan.org/pod/App::cpanminus

To execute the task, run through these steps:

```sh
git clone https://github.com/johannessen/perl-modules
cd perl-modules
cpanm Dist::Zilla
dzil authordeps --missing | cpanm
dzil build --no-tgz --in build
cpanm --installdeps ./build

```
