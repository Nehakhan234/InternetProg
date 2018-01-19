#!"C:/xampp/perl/bin/perl.exe"
use DBI;
$db="ip";
print "content-type:text/html","\n\n";
$dbh=DBI->connect("dbi:mysql:database=$db","root","");
$r=$dbh->prepare("select * from stud");
$r->execute();

while(($a,$b,$c,$d)=$r->fetchrow_array())
{
 print "<html>","\n";
 print "<body>","\n";
 print "<hr>";
 print "Name <input type=\"text\"name=\"g1\"value=$a>";
 print "regno <input type=\"text\"name=\"g2\"value=$b>";
 print "age <input type=\"text\"name=\"g3\"value=$c>";
 print "gender <input type=\"text\"name=\"g4\"value=$d>";
 print "<hr>","\n";
 print "</body></html>","\n";
}
$r->finish();
exit(0);



