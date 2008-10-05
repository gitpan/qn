package qn;

use 5.010000;
use strict;
use warnings;

use parent 'Exporter';

our @EXPORT_OK = qw/qn/;
our @EXPORT = qw/qn/;
our $VERSION = '0.01';

sub qn {
	$_=shift;
	s/^\s+//msg;
	s/\s*\n\s*/\n/msg;
	s/\s*$//msg;
	split /\n/;
}

1;
__END__

=head1 NAME

qn - Perl extension for quoting and splitting on newlines.

=head1 SYNOPSIS

  use qn;

  @a = qn <<END;
      word
      word with spaces
      another word
  END

  @b = qn '
      element one
      element two
  ';

  @c = qn "
      item: $one
      item: $two
  ";

=head1 DESCRIPTION

Quoting similar to qw//. Instead of splitting on whitespace though,
qn splits on newlines allowing each element to include whitespace.

Leading and trailing whitespace is stripped from each element, but
whitespace within is left intact.

=head1 CAVEATS

=over

=item

Won't work with delimiters such as ()'s, {}'s, or //'s.

=item

End tag must be fully outdented in here-doc usage. But that's a Perl
thing, right?

=back

=head1 EXPORT

qn()

=head1 SEE ALSO

qw in perlfunc.

=head1 AUTHOR

Rick Myers, E<lt>rick@jrmyers.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 by Rick Myers.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut

