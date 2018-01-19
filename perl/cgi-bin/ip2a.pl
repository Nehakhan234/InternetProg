#!"C:/xampp/perl/bin/perl.exe"
use CGI;
$c=CGI->new();
$value=$c->param('name');
print "content-type:text/html","\n\n";
print "<html>","\n";
print "<head><title>Greeting message</title></head>","\n";
print "<body><h1>Greeting messaage</h1>","\n";
print "<hr>","\n";
print "Nice to meet you ",$value,"!!!","\n";
print "please visit this web again","\n";
print "<hr>","\n";
print "</body></html","\n";
exit(0);
