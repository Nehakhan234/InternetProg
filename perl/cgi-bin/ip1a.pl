#!"C:/xampp/perl/bin/perl.exe"
print "content-type:text/html","\n\n";
print "<html>","\n";
print "<head><title> Server Information</title></head>","\n";
print "<body><h1>About this server</h1>","\n";
print "<hr>","\n";
print "server name:",$ENV{'SERVER_NAME'},"<br>","\n";
print "Running port:",$ENV{'SERVER_PORT'},"<br>","\n";
print "Server Software:",$ENV{'SERVER_SOFTWARE'},"<br>","\n";
print "server protocol:",$ENV{'SERVER_PROTOCOL'},"<br","\n";
print "cgi version:",$ENV{'GATEWAY_INTERFACE'},"<br>","\n";
print "Root document:",$ENV{'DOCUMENT_ROOT'},"<br>","\n";
print "<hr>","\n";
print "</body></html>","\n";
exit(0);