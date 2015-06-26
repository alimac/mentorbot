#!/usr/bin/perl
use strict;
use warnings;

use Bot::BasicBot::Pluggable;

my $bot = Bot::BasicBot::Pluggable->new(
  server => 'irc.freenode.net',
  channels => [ '#midcamp','#alimac', '#drupal-stl', '#drupalcamp'],
  nick => 'Druplicamper',
  username => 'Druplicamper',
  altnicks => ["Drupli_camper", "Drupli__camper"],
  name => "Super-awesome pluggable bot for Drupal camp channels.",
);

$bot->load('Auth');
#$bot->load('Loader');
$bot->load("Seen");
$bot->load('Karma');
$bot->load('Infobot');

$bot->run();

