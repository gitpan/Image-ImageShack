use Test::More tests => 10;

BEGIN { use_ok('Image::ImageShack') };

use_ok("LWP::Simple");
use_ok("File::Compare");
use_ok("File::Spec::Functions");

my $file     = catfile(qw(t image.png));
my $download = catfile(qw(t download.png));

ok( my $is = Image::ImageShack->new(), 'object construction');
isa_ok( $is, 'Image::ImageShack', 'object is of correct type');
can_ok($is, 'host');
ok( my $url = $is->host($file), 'upload file');
ok( 200==LWP::Simple::getstore($url, $download), 'downloaded uploaded file');
ok( 0==File::Compare::compare($file, $download), 'downloaded and uploaded files are equal' );

#cleanup
unlink($download);
