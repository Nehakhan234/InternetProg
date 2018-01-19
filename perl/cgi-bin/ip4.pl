#!"C:/xampp/perl/bin/perl.exe"
use  CGI;
$GS="usr/bin/gs";
$|=1;
print "content-type:text/plain","\n\n";
($seconds,$minutes,$hour)=localtime(time);
if($hour>12)
{
    $hour-=12;
    $ampm="pm";
}
else
{
    $ampm="am";
}
if($hour==0)
{
    $hour=12;
}
$time=sprintf("%02d:%02d:%02d %s",$hour,$minutes,$seconds,$ampm);
print $time;
exit(0);