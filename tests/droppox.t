#!/usr/bin/perl
use strict;
use 5.010;
use Cwd 'abs_path';
use Data::Dumper;
use Test::Simple tests => 5;
use File::Slurp;
chdir(abs_path() .  '/tests');

my $blob = "Hello\nWorld";

write_file('real/test-real', $blob);
write_file('fake/test-fake', $blob);

# Basic read/write
ok(-e 'real/test-real', 'Test write to real FS');
ok(read_file('real/test-real') eq $blob, 'Read real -> real');
ok(read_file('fake/test-real') eq $blob, 'Read real -> fake');

ok(-e 'fake/test-fake', 'Test write to fake FS');
ok(read_file('real/test-fake') eq $blob, 'Read fake -> real');
ok(read_file('fake/test-fake') eq $blob, 'Read fake -> fake');

# Globs
my @glob = sort glob('real/test-*');
my @expect = qw(real/test-fake real/test-real);
ok(@glob ~~ @expect, 'Glob on real');

my @glob = sort glob('fake/test-*');
my @expect = qw(fake/test-fake fake/test-real);
ok(@glob ~~ @expect, 'Glob on fake');

ok(unlink 'fake/test-real', 'Unlink from fake');
ok(unlink 'real/test-fake', 'Unlink from real');
