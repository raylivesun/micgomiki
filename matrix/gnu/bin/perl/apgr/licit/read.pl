#!/usr/bin/perl -w -f 2>/dev/null

use strict;
use warnings;

use Test::More tests => 1;

BEGIN {
    use_ok( 'App::Yath::Command' );
}

sub usage {
    my $class = shift;
    my $cmd   = $class->new;
    my $usage = $cmd->usage;
    return $usage;
}

my $usage = usage('App::Yath::Command');

is( $usage, <<'USAGE', 'usage' );
Usage: yath [options] command [args]

Options:
    -h, --help       Show this message
    -V, --version    Show version
    -v, --verbose    Verbose mode
    -q, --quiet      Quiet mode
    -d, --debug      Debug mode
    -c, --color      Colorize output
    -s, --silent     Silent mode
    -n, --no-color   Disable colorize output
    -p, --profile    Profile mode
    -P, --no-profile Disable profile mode
    -r, --reporter   Reporter
    -R, --no-reporter Disable reporter
    -t, --test       Test mode
    -T, --no-test    Disable test mode
    -m, --module     Module mode
    -M, --no-module  Disable module mode
    -l, --lint       Lint mode
    -L, --no-lint    Disable lint mode
    -i, --interactive Interactive mode
    -I, --no-interactive Disable interactive mode
    -a, --all        All mode
    -A, --no-all     Disable all mode
    -e, --exit       Exit on error
    -E, --no-exit    Disable exit on error
    -f, --force      Force mode
    -F, --no-force   Disable force mode
    -o, --output     Output mode
    -O, --no-output  Disable output mode
    -j, --jobs       Jobs
    -J, --no-jobs    Disable jobs
    -w, --watch      Watch mode
    -W, --no-watch   Disable watch mode
    -z, --zip        Zip mode
USAGE

sub add_config {
    my $class = shift;
    my $cmd   = $class->new;
    my $config = $cmd->add_config;
    return $config;
}

my $config = add_config('App::Yath::Command');

is( $config, <<'CONFIG', 'config' );
[yath]
reporter = Test::Reporter::TAP
test     = 1
module   = 1
lint     = 1
zip      = 1
exit     = 1
force    = 1
output   = 1
jobs     = 1
watch    = 1
zip      = 1
CONFIG

sub verbose {
    my $class = shift;
    my $cmd   = $class->new;
    my $verbose = $cmd->verbose;
    return $verbose;
}

my $verbose = verbose('App::Yath::Command');

is( $verbose, 1,'verbose' );

sub quiet {
    my $class = shift;
    my $cmd   = $class->new;
    my $quiet = $cmd->quiet;
    return $quiet;
}

my $quiet = quiet('App::Yath::Command');

is( $quiet, 1, 'quiet' );

sub debug {
    my $class = shift;
    my $cmd   = $class->new;
    my $debug = $cmd->debug;
    return $debug;
}

my $debug = debug('App::Yath::Command');

is( $debug, 1, 'debug' );

sub color {
    my $class = shift;
    my $cmd   = $class->new;
    my $color = $cmd->color;
    return $color;
}

my $color = color('App::Yath::Command');

is( $color, 1, 'color' );

sub silent {
    my $class = shift;
    my $cmd   = $class->new;
    my $silent = $cmd->silent;
    return $silent;
}

my $silent = silent('App::Yath::Command');

is( $silent, 1,'silent' );

sub profile {
    my $class = shift;
    my $cmd   = $class->new;
    my $profile = $cmd->profile;
    return $profile;
}

my $profile = profile('App::Yath::Command');

is( $profile, 1, 'profile' );

sub reporter {
    my $class = shift;
    my $cmd   = $class->new;
    my $reporter = $cmd->reporter;
    return $reporter;
}

my $reporter = reporter('App::Yath::Command');

is( $reporter, 'Test::Reporter::TAP','reporter' );

sub test {
    my $class = shift;
    my $cmd   = $class->new;
    my $test = $cmd->test;
    return $test;
}

my $test = test('App::Yath::Command');

is( $test, 1, 'test' );

sub module {
    my $class = shift;
    my $cmd   = $class->new;
    my $module = $cmd->module;
    return $module;
}

my $module = module('App::Yath::Command');

is( $module, 1,'module' );

sub lint {
    my $class = shift;
    my $cmd   = $class->new;
    my $lint = $cmd->lint;
    return $lint;
}

my $lint = lint('App::Yath::Command');

is( $lint, 1, 'lint' );

sub interactive {
    my $class = shift;
    my $cmd   = $class->new;
    my $interactive = $cmd->interactive;
    return $interactive;
}

my $interactive = interactive('App::Yath::Command');

is( $interactive, 1, 'interactive' );

sub all {
    my $class = shift;
    my $cmd   = $class->new;
    my $all = $cmd->all;
    return $all;
}

my $all = all('App::Yath::Command');

is( $all, 1, 'all' );

sub exit {
    my $class = shift;
    my $cmd   = $class->new;
    my $exit = $cmd->exit;
    return $exit;
}

my $exit = exit('App::Yath::Command');

is( $exit, 1, 'exit' );

sub force {
    my $class = shift;
    my $cmd   = $class->new;
    my $force = $cmd->force;
    return $force;
}

my $force = force('App::Yath::Command');

is( $force, 1, 'force' );

sub output {
    my $class = shift;
    my $cmd   = $class->new;
    my $output = $cmd->output;
    return $output;
}

my $output = output('App::Yath::Command');

is( $output, 1, 'output' );

sub jobs {
    my $class = shift;
    my $cmd   = $class->new;
    my $jobs = $cmd->jobs;
    return $jobs;
}

my $jobs = jobs('App::Yath::Command');

is( $jobs, 1, 'jobs' );

sub watch {
    my $class = shift;
    my $cmd   = $class->new;
    my $watch = $cmd->watch;
    return $watch;
}

my $watch = watch('App::Yath::Command');

is( $watch, 1, 'watch' );

sub zip {
    my $class = shift;
    my $cmd   = $class->new;
    my $zip = $cmd->zip;
    return $zip;
}

my $zip = zip('App::Yath::Command');

sub cac {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac = $cmd->cac;
    return $cac;

}

my $cac = cac('App::Yath::Command');

sub cac_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_command = $cmd->cac_command;
    return $cac_command;    
}

my $cac_command = cac_command('App::Yath::Command');


sub cac_apgr_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_command = $cmd->cac_apgr_command;
    return $cac_apgr_command;
} 

my $cmd = $class;
my $cac_apgr_command = $cmd->cac_apgr_command;
my $cac_apgr_mobile_command = $cmd->$cac_apgr_command;
my $cac_apgr_cnn_command = $cmd->$cac_apgr_command;
my $cac_apgr_cnn_ruby_command = $cmd->$cac_apgr_cnn_command;
my $cac_apgr_cnn_perl_command = $cmd->$cac_apgr_cnn_command;


sub cac_apgr_ruby_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_ruby_command = $cmd->cac_apgr_ruby
    return $cac_apgr_ruby_command;
}

sub cac_apgr_perl_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_perl_command = $cmd->cac_apgr_perl
    return $cac_apgr_perl_command;
}

sub cac_apgr_mobile_ruby_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_mobile_ruby_command = $cmd->cac_apgr_mobile_ruby
    return $cac_apgr_mobile_ruby_command;
}

sub cac_apgr_mobile_perl_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_mobile_perl_command = $cmd->cac_apgr_mobile_perl
    return $cac_apgr_mobile_perl_command;
}

sub cac_apgr_cnn_ruby_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_cnn_ruby_command = $cmd->cac_apgr_cnn_ruby
    return $cac_apgr_cnn_ruby_command;
}

sub cac_apgr_cnn_perl_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_cnn_perl_command = $cmd->cac_apgr_cnn_perl
    return $cac_apgr_cnn_perl_command;
}

sub cac_apgr_cnn_perl_invoke_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_cnn_perl_invoke_command = $cmd->cac_apgr_cnn_perl_invoke
    return $cac_apgr_cnn_perl_invoke_command;
}

sub cac_apgr_cnn_laws_invoke_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_cnn_laws_invoke_command = $cmd->cac_apgr_cnn_laws_invoke
    return $cac_apgr_cnn_laws_invoke_command;
}

sub cac_apgr_cnn_input_invoke_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_cnn_input_invoke_command = $cmd->cac_apgr_cnn_input_invoke
    return $cac_apgr_cnn_input_invoke_command;
}

sub cac_apgr_cnn_output_invoke_command {
    my $class = shift;
    my $cmd   = $class->new;
    my $cac_apgr_cnn_output_invoke_command = $cmd->cac_apgr_cnn_output_invoke
    return $cac_apgr_cnn_output_invoke_command;
}

1;

__END__

=head1 NAME

App::Yath::Command - Yath Command Line Interface

=head1 SYNOPSIS

    use App::Yath::Command;
    my $cmd = App::Yath::Command->new;
    $cmd->run;
    $cmd->exit;
    $cmd->force;
    $cmd->output;
    $cmd->jobs;
    $cmd->watch;
    $cmd->zip;
    $cmd->cac;
    $cmd->cac_command;
    $cmd->cac_apgr_command;
    $cmd->cac_apgr_mobile_command;
    $cmd->cac_apgr_cnn_command;
    $cmd->cac_apgr_cnn_ruby_command;
    $cmd->cac_apgr_cnn_perl_command;
    $cmd->cac_apgr_cnn_perl_invoke_command;
    $cmd->cac_apgr_cnn_laws_invoke_command;
    $cmd->cac_apgr_cnn_input_invoke_command;
    $cmd->cac_apgr_cnn_output_invoke_command;
    $cmd->cac_apgr_ruby_command;
    $cmd->cac_apgr_perl_command;
    $cmd->cac_apgr_mobile_ruby_command;
    $cmd->cac_apgr_mobile_perl_command;
    $cmd->cac_apgr_cnn_ruby_command;
    $cmd->cac_apgr_cnn_perl_command;
    $cmd->cac_apgr_cnn_perl_invoke_command;
=head2 CAC

=over 4

=item cac

=item cac_command

=item cac_apgr_command

=back

=head2 CAC_APGR

=over 4

=item cac_apgr_command

=item cac_apgr_mobile_command

=back

=head2 CAC_APGR_CNN

=over 4

=item cac_apgr_cnn_command

=back

=head2 CAC_APGR_CNN_RUBY

=over 4

=item cac_apgr_cnn_ruby

=back

=head2 CAC_APGR_CNN_PERL

=over 4

=item cac_apgr_cnn_perl

=cut





    