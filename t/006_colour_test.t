use strict;
use warnings;
use Test::More;
use Test::Deep;
use App::AltSQL::View;

my $view = App::AltSQL::View->new({
	app => 1,
});
my $data = {
	columns => [{
         'is_auto_increment' => '',
         'is_blob' => '',
         'is_key' => '',
         'is_num' => 0,
         'is_pri_key' => '',
         'length' => 24,
         'max_length' => 8,
         'name' => 'spaced ',
         'nullable' => undef,
	}],
	rows => [[' spaced ']],
};

cmp_deeply $view->render_table($data), re(qr/spaced/), "data on red background";
done_testing;
