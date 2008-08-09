use Test::More tests => 2;

BEGIN { use_ok('Image::ImageShack') };

ok( my $is = Image::ImageShack->new() );
