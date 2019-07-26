use Test::PerlTidy;

my $perltidyrc;
if (not -f '.perltidyrc') {
    $perltidyrc = '.perltidyrc';
}
else {
    $perltidyrc = '../.perltidyrc';
}

run_tests(
  perltidyrc => $perltidyrc,
  exclude => [
    'Makefile.PL', '.build/', 'blib/', 'misc/', qr{t/(author|release)-.*\.t}
  ],
);
