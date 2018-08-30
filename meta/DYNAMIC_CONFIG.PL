# Lexical::Sub is broken on Perl 5.22+
if ($] >= 5.022) {
	$meta->{prereqs}{runtime}{recommends}{'Lexical::Sub'} =
		delete $meta->{prereqs}{runtime}{requires}{'Lexical::Sub'};
	# So use Lexical::Importer instead
	$meta->{prereqs}{runtime}{requires}{'Lexical::Importer'} = '0.000004';
}
