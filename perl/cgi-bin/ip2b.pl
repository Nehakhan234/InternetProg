#!"C:/xampp/perl/bin/perl.exe"
print "content-type:text/html","\n\n";
$cnt="C:/xampp/cgi-bin/cntfile.txt";

if(open(FILE,"<",$cnt))
{
$no_access=<FILE>;
$no_access++;
print "no of visitors are $no_access";
close(FILE);

if(open(FILE,">",$cnt))
{
   print FILE $no_access;
   close(FILE);
}
else
{
    print "could not print file";
}
}

else
{
    print "error in oprning file";
}

exit(0);