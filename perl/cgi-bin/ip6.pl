#!"C:/xampp/perl/bin/perl.exe"
use CGI;
use DBI;
$c=CGI->new();

print "content-type:text/html","\n\n";
$db="ip";
$dbh=DBI->connect("dbi:mysql:database=$db","root","");

$x=$c->param('user');
$y=$c->param('regno');
$z=$c->param('age');
$a=$c->param('gen');

$r=$dbh->prepare("insert into stud values('$x','$y','$z','$a')");
$r->execute();
$r->finish();
print "<html><body>","\n";
print "<center>";
print "<h3>Record inserted successfully</h3>";
print "</center>";
print "</body></html>";
exit(0);s