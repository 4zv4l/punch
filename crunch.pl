#!/usr/bin/env perl

use warnings;
use strict;
use feature 'say';

my $usage = $ARGV[2] || die "usage: ./crunch <min> <max> [characters]\n";
my ($min, $max, @chars) = ($ARGV[0], $ARGV[1], split('', $ARGV[2]));

my $lines = 0;
for my $i ($min..$max) { $lines += ((@chars) ** $i)}
my $bytes = 0; # include newlines
for my $i ($min..$max) { $bytes += ($lines * ($i+1))}

warn "number of lines: $lines\n";
warn "number of bytes: $bytes\n";
sleep(2);

# gen possibilities for each length
genPoss("", $_) for($min..$max);

sub genPoss {
    my ($str, $max) = @_;
    if(length($str) == $max) {
        say $str;
    } else { # append each possible char
        genPoss($str.$_, $max) foreach(@chars);
    }
}
