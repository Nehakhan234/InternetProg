#!C:/xampp/perl/bin/perl.exe
print "content-type:text/html","\n\n";
print "<html>","\n";
print "<head><title> executing unix command </title></head>","\n\n";
print "<body><h1> executing unix command</h1>","\n";
$query_string=$ENV{'QUERY_STRING'};
($field_name,$command)=split(/=/,$query_string);
$com=system($command);
if($com==-1)
{
print "command not found";
}
else
{
print $com;
}
print "</body></html>";
exit(0);